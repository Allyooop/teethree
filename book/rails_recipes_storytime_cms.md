1. What is it?
2. When do you use it?
3. How do you get it in your app?
4. How do you use it in your app? (basic)
5. How do you use it in your app? (Advanced)
6. Advanced features or customizations

# Building a simple CMS with the Storytime Engine

1. Add gem

2. run Storytime install

3. check initializer

4. Install migrations

5. rake migrations

6. Party

> IMPORTANT MAKE SURE IT COMES AFTER DEVISE IN ROUTES FILE OR YOU GET INFINITE LOOP OF DEATH

> IMPORTANT MAKE SURE YOU HANDLE THE SEARCH MIGRATION OPTION - NOT WELL DOCUMENTED!

Some setup you must do manually if you haven't yet:                                                                                    
                                                                                                                                       
  1. Check/update Storytime initializer file (config/initializers/storytime.rb).                                                       
                                                                                                                                       
  2. Install Storytime migrations by running:                                                                                          
                                                                                                                                       
      rake storytime:install:migrations                                                                                                
                                                                                                                                       
  3. Migrate your database:                                                                                                            
                                                                                                                                       
      rake db:migrate  