SELECT * 
FROM "COVID Project"..CovidDeaths
order by 3,4

--Select Data that we are going to be using

SELECT Location, date, total_cases, new_cases, total_deaths, population 
FROM "COVID Project"..CovidDeaths
order by 1,2
--Looking at Total Cases vs Total Deaths: shows likelihood of dying if you contract covid in your country
SELECT Location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
FROM "COVID Project"..CovidDeaths
WHERE location like '%states%'
order by 1,2

--Looking at Total Cases vs Population: shows what % of population got Covid
SELECT Location, date, Population, total_cases, (total_cases/Population)*100 as 'Percent Population Infected'
FROM "COVID Project"..CovidDeaths
WHERE location like '%states%'
order by 1,2

--Looking at Countries with Highest Infection Rate compared to Population
SELECT Location, Population, MAX(total_cases) as HighestInfectionCount, MAX((total_cases/Population))*100 as 'Percent Population Infected'
FROM "COVID Project"..CovidDeaths
--WHERE location like '%states%'
Group by Location, Population
order by 4 desc

--Showing Countries with Highest Death Count per Population
SELECT Location, MAX(total_deaths) as TotalDeathCount
FROM "COVID Project"..CovidDeaths
--WHERE location like '%states%'
Group by Location
order by 2 desc

--Breaking things down by continent
SELECT continent, MAX(cast(total_deaths as bigint)) as TotalDeathCount
FROM "COVID Project"..CovidDeaths
--WHERE location like '%states%'
Where continent is not null
Group by continent
order by 2 desc

--GLOBAL NUMBERS
SELECT date, SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, SUM(cast(new_deaths as int))/SUM(new_cases)*100 as DeathPercentage
FROM "COVID Project"..CovidDeaths
where continent is not null
group by date
order by 1,2

SELECT SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, SUM(cast(new_deaths as int))/SUM(new_cases)*100 as DeathPercentage
FROM "COVID Project"..CovidDeaths
where continent is not null
--group by date
order by 1,2

--Looking at Total Pop vs Vacc
-- USE CTE
With PopvsVac (Continent, Location, Date, Population, New_Vaccinations, RollingPeopleVaccinated) as 
(
Select dea.continent,dea.location,dea.date,dea.population, vac.new_vaccinations, 
SUM(convert(int,vac.new_vaccinations)) OVER (Partition by dea.Location Order by dea.location, dea.Date) as RollingPeopleVaccinated
From [COVID Project]..CovidDeaths dea
Join [COVID Project]..CovidVaccinations vac
	On dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null
--order by 2,3
)
SELECT *, (RollingPeopleVaccinated/Population)*100
FROM PopvsVac


--TEMP TABLE
DROP Table if exists #PercentPopulationVaccinated
Create Table #PercentPopulationVaccinated
(Continent nvarchar(255), Location nvarchar(255), Date datetime, Population numeric, New_Vaccinations numeric, RollingPeopleVaccinated numeric)

Insert into #PercentPopulationVaccinated
Select dea.continent,dea.location,dea.date,dea.population, vac.new_vaccinations, 
SUM(convert(int,vac.new_vaccinations)) OVER (Partition by dea.Location Order by dea.location, dea.Date) as RollingPeopleVaccinated
From [COVID Project]..CovidDeaths dea
Join [COVID Project]..CovidVaccinations vac
	On dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null
--order by 2,3

SELECT *, (RollingPeopleVaccinated/Population)*100
FROM #PercentPopulationVaccinated

--Creating View to store data for later visualizations
Create View PercentPopulationVaccinated as 
Select dea.continent,dea.location,dea.date,dea.population, vac.new_vaccinations, 
SUM(convert(int,vac.new_vaccinations)) OVER (Partition by dea.Location Order by dea.location, dea.Date) as RollingPeopleVaccinated
From [COVID Project]..CovidDeaths dea
Join [COVID Project]..CovidVaccinations vac
	On dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null
--order by 2,3

Select *
From PercentPopulationVaccinated