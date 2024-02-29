param(
    [String] $baseDir = "."
)

Invoke-WebRequest -Uri https://spire.cityraiders.net/api/v1/eqemuserver/export-client-file/spells -OutFile "$baseDir\rof\spells_us.txt"
Invoke-WebRequest -Uri https://spire.cityraiders.net/api/v1/eqemuserver/export-client-file/skills -OutFile "$baseDir\rof\SkillCaps.txt"
Invoke-WebRequest -Uri https://spire.cityraiders.net/api/v1/eqemuserver/export-client-file/basedata -OutFile "$baseDir\rof\BaseData.txt"
Invoke-WebRequest -Uri https://spire.cityraiders.net/api/v1/eqemuserver/export-client-file/dbstring -OutFile "$baseDir\rof\dbstr_us.txt"

if ($basedir -ne "."){
    Set-Location -Path "$baseDir\rof"
}

git add "spells_us.txt"
git add "SkillCaps.txt"
git add "BaseData.txt"
git add "dbstr_us.txt"
