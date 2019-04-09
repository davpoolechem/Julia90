using Base.Threads

function hello_julia_impl(mutex)
    #*************#
    #* set types *#
    #*************#
    i::Int64 = 0

    #***********************#
    #* perform calculation *#
    #***********************#
    Threads.@threads for i in 1:Threads.nthreads()
        lock(mutex)
        println("Hello from Julia thread ",Threads.threadid())
        unlock(mutex)
    end
    println("")
end
#endfxn

function hello_julia()
    mutex = Threads.Mutex()
    hello_julia_impl(mutex)

    ccall((:hello_fortran_,"hello_fortran.so"),Int64,())
end

hello_julia()