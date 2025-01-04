Grade() {
score=$1
if (( $score >= 80 )); then
grade="A+"
elif (( $score >= 70 )); then
grade="A"
elif (( $score >= 60 )); then
grade="B"
elif (( $score >= 50 )); then
grade="C"
elif (( $score >= 40 )); then
grade="D"
else
grade="F"
fi
echo “The grade for mark $s is $grade”
}

read -p "Enter a score between 1-100:" s
Grade $s
