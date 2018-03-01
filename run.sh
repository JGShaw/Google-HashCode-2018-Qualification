echo "Starting a"
ruby lib/main.rb inputs/a_example.in
echo "Starting b"
ruby lib/main.rb inputs/b_should_be_easy.in
echo "Starting c"
ruby lib/main.rb inputs/c_no_hurry.in
echo "Starting d"
ruby lib/main.rb inputs/d_metropolis.in
echo "Starting e"
ruby lib/main.rb inputs/e_high_bonus.in
rm code.zip
zip -r code.zip *
