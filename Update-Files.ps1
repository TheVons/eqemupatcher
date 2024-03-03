param(
    [String] $baseDir = "."
)

Invoke-WebRequest -Uri https://spire.cityraiders.net/api/v1/eqemuserver/export-client-file/spells -OutFile "$baseDir\rof\spells_us.txt"
Invoke-WebRequest -Uri https://spire.cityraiders.net/api/v1/eqemuserver/export-client-file/skills -OutFile "$baseDir\rof\Resources\SkillCaps.txt"
Invoke-WebRequest -Uri https://spire.cityraiders.net/api/v1/eqemuserver/export-client-file/basedata -OutFile "$baseDir\rof\Resources\BaseData.txt"
Invoke-WebRequest -Uri https://spire.cityraiders.net/api/v1/eqemuserver/export-client-file/dbstring -OutFile "$baseDir\rof\dbstr_us.txt"
