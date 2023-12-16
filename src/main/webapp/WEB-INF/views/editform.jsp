<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@page import="com.example.bean.BoardVO, com.example.bean.BoardVO"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>유희왕 카드 도감</title>
    <link rel="stylesheet" href="${path}/resources/css/my.css" type="text/css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <style>
        button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        button[type="button"] {
            background-color: #e3dcdc;
            color: #2c2b2b;
        }
        button[type="submit"] {
            background-color: #e7ece7;
            color: #2c2b2b;
        }
        body {
            background-image:
                    linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
                    url('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxQUExYUExQXFhYYGB4bGRkZGRggHhoZGxwZGB8eHh4ZHyohGRsoHhkfIjMiJistMDAwGSA1OjUuOSovMC0BCgoKDw4PHBERHC8mISgxLy8vMTQtLy8xLy8vLy8vMS8xMS8vLy8xLy8vLy8vMS8vLzQxLy8vLy8vLy8vMS8vL//AABEIAKgBLAMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAFBgQHAAECAwj/xABHEAACAQIEAwUEBwcCBAQHAAABAgMAEQQSITEFBkETIlFhcTJCgZEHFCNSYqGxQ3KCksHR8DPhJFPT8RaissIVF1Rjc7Pj/8QAGgEAAgMBAQAAAAAAAAAAAAAAAgMAAQQFBv/EAC4RAAICAQQABgAEBwEAAAAAAAABAhEDBBIhMRMiQVFhgSNxkbEFMkKh0eHw8f/aAAwDAQACEQMRAD8ApKSYmvKsrKhDKysrdQhlbC1oVsC5qEN6muymlemES5tTPw7hYeygXJ/IdSfIVaVlxi5NJdir2dhfrWrE6UT4ng8rsvUEg/ChwOhA26mqI006ZjEWsOm5rooLFqyO3XatRJmv+QqFHJBOp+FdTEaAamt5zawFzXUeUaHfqahDlorC4IrRBNidh1rIo8wOpsK6L3FraDbzqENSkHa9q9FwxsCupJ2FMXK/Kz4i7NaONAM8jXypfYWGruToEGp/Om8fV8CckWGPaf8ANxKXc+axsMiD4MfOs2bUxh1yxkcbZXsfL87WYIW9Nf0qNjsA6kAow8SRVv4TmmV4pZGkxDdmy92ORYxka4zaIdA1hYAe2K4xvPELRHt45XUe7L2Mv5PGp+Tr61ljrJuSTQbxIpp48ouD/m9c2NwzbU+Y7hGAxcmXCSdnKQMkZzCKRjfuKz6xS6HuMzKej0o8UwUkTZHQggkEEG4I6EHY+VdCORPgU40QnsT61t1y2sbk/lW7gAge1betLFdb30G9GCcW1uduprRAJ8q9GObpYD866kZbefQVCHiyZbedYFsddzXuE0vuf0ryka+3xNQhkUWZrD50zQYYxqPMXqPy9glbvdBufGm/hPDu1lDMO4mtv0Hn4n086dhg5SGYscsk1BepCxHDuyw6O+jMdfIEXA/L86TOJSgsatHmdM8EgG6gN+d/nYH5iqkx29Mz8cGvX4I4ppR6pf24ZFfeua6tWjWUwGq2DWqyoQ9Y5iKIxYzShNdh6JOiHFZWVuhIZW7Guo1vRTD8PLLVqLZASa6I10ohNgDtapGD4Xpc9BepTIeGBiK941ZHBcGIYFkk0kmy7+6jEBF9WJBP8PhS7yrwf6ziERh9mO8/7i7/ADNl+NFedeL/APERINldZG+DDKPguvxFPxxpWdDQ1C80vThfmxe5yw5Wa40Di/xGh/p86WbEanarB5nw4mhEq6hWPyuVP5i/wpMk4e51O3QUqaplfxLGo5m10+V9kH2mBI+Fdm4aynU+FTTgidADetYjh+VSQdev6UBgIdinqev+etaUZm1Fh51jIxAJ2FbmcG1gbVCGa3sNvAdaMcs8JkmxEcKi7O2l9gOrHwAFyfIUJdABmBuegp9+jrDlIMTOfbIWBD4GUsz/AByRkX/EaTqMmzG5BQVug5xSHtiMPhyI8PDclze2ujSvbVpHOgA1tYDY16wrDBAbmeaIkLaUhIyw1uFDszEW9wqR1OtSuK4XsoClwqxqskpPvSyewg/dS/pZ/GoWRFiTF4v7UkWgiY2URrcB2C27twbKLX1J8+JGTn2a2kgvwvjCstljhRfARIb/AMwJPxNe3FODwTRF5YEZbavBZWX95V7vzUetI2M+kXEqR2cnZoNkjUIvyUDSjXLvP7zuBMM5+8AFkUHqrrv+61wetBLR5IedNpF+LF8UgPieXzhs8sRGIgcBWXUA63CuBrFIN1YbHUE6ii/EsD9awpk/1JI1B7QgZpYb5Mz2/bRGyP4jKdtTN41N9WftUCsrZRIALRyxS5irZdkuUZGUeyygi1xYnwNI4WcLrDeOVc3/ACp8sUinx7sgB84hT3nmkt30wHFPootsLldlYWsTvXCIW0Hs+A60yc+YIR4l01AR2U+eUkf0obhMN7Ntb9P89a7OKe6CkZpKnR4RwMOl/AW+NRBhiL5hr5098O4eFZc9rt49Og/tRSfluNm1UqDuxtbbxFPjjclaLWOTjuS4KrCsdAfWu4AScoGnpT9xfkmwBiOlQeGctGJ+0m0UageP+eNU4NOgAhwXACOAMw190dSfLzplYrhsOzyH2RmfzY9B+Sj4VA4MnazZz7MYuB5+6PhqfgKA/SDxQyyLhY+hGbzdtFHwBv8AxeVbsS8OFs6el/BxSzPt8Ic4B2kMZcWaWFWceHaXa3wVgPhVV8b4blvpqDY+oq4OJMq4iSEfsxGLfhyAD/0mk/mDCL2xB2cXHqdD+YPzo/C8SCYWrju08J+139sq4qa1enLE8t3PdrwHLdt6w+DO6o5Qp2reWmWbgdqE4yDLoKp42uyUDqytmtUshlbFardQh6wsQwI0INxVm8uPBLGGMS32YL3SD/DoQdxcGqvG9MfL2LaBw41U6MPEf3HT/enYWlLk2aTNCEts1cX38fI9rwLDS6xS2v0azD+ZbW+NQMfyrMlzlDL4qw/Q2P5V6cV4UJVGIg1JFyB73mPxeI/ruFj4zNHtIfjr+tbpYUOz48UZU417NO7HHljDjD4aR3Uh3Ulr7hRoF9SCT/EB0pCx0TSOzt7TG5/zwG3wotiOYJZk7MgakXy31A1tbXrr8K8mAtegcOBGpyR2xjDpfuF+UkEmHkhbXKx/lfX9c1dxcvyWt3F/ETc28QFv+dqDcDmnExGHTOzIbg3yhRY5m8APHztuRQ7iXGcQxBkY94ZlBFlym9jl2I00JBoXtapjnmxzxxU07XH0NycGw8SXkkJHVu6o9LkmozDBmNnWLMi++7MQT5DQMfhagPB8BJipM0rMVX22J6fdHhf8h8KajypiMWiNHGVgA+yAsM46Pvov3fLXqLKyRjGNsZDLigrUF8XzZXPFZA7ErGqL7qgC/wAbdf8AtUJHUe0Nas/FfRdilXMqZmPS6/386Cj6M8aXJMJ163T+9c96jHfZz57pScn6iPh4cwO9/X/arN5EYNgJF+5iIy3o0ci3+Yt8aF//ACzxt7CJgPVR+hpt5I5NxMBkiljIimTKWuvddSGRjY9GFvRjWTV5Izg4pl404ytnf0ixMVUKe68sklx1vkyfJLemahf0g4fuC18qQwhRf3eyQ+G1yab+G8JnjDLNhw4Ulow1iMxGVl0PvLsehVTXpx7lB8REoXNdF7PUgXUaoT0zBTlPmtc3FPbVp8O+h8kvc+enkY6WojwLEhJAB7VrX+FODfRjjI2ISMsPG6/38qncA+jLECTM8dhe9zl/vtXWy6rG4NGeON2EuIwdpg401N4sTbqbRNBiAdPBkb+Y0RwmGz4RCvvRpCLfebENIB62X9Kl8w8BnCBMOrho1EUbKQtruJZZQb6ElQg8rnwo3wzhkyxRGQXaItIFCooMlsqCyADQ94nzrlZH5Yrn9PyHr1ZSv0mYtGxmItv2r2+DWvULgMQsGOpvTbjvo8xMszSNGbkk3JTr8a2n0eYkCyow/iX+9dTDqYRgk7/QRLG2yLxCcNFYAaDU+VEeB8dMiaDMV7rAe0fusPEkdOpvbz3DyZix3eza3quv51nD+Q8XAe0EZIt7Nx3h4b7+H+9dPSavGpVZo0uSWOXfD4f+Qrh8XFKoaNgQPDofAr0PwBoVx9ZWF7Bh+H+o3+V66xnCjPefCnLiVF3QaCdfvqDpn6MuxNjoTqs4PmyWNyJVLLfUbMhGhAv59G1866bcfVUzTlWGb2zVP3X7jKswwuEMjDvWzkeLNYKv6D50i8oYWTE4+DTOTOkjnT2VdWdtegFP2K4O+NfCxOGWDERNIsq6hZOzMiBvMAG6m176HS4Hco8uTYXHYiKUAMmHYgjZlZ4wGXyNiPKxHSsubImmk+kJ1U1NxhD+WKJPNPEuz4uy37sgRT8nC/8AmNSOKcPMwWxAKnr4H09KVeLcJnxPEzHFdpHZSpN+4oVTmPgq7/7mmDiPEJUimlWNckMvY9o9wJJAxQlVB9kWvv1A8bO0+VRgot+w3T54eHLHk69CbheGADV7+g/v/aveXBwqLudPxNb9LUO4ZwfGTxGfEzjB4cC5ZhlYr+FRY2P4j4WBqR/w0EZmRHAGomm1mfoCAdIr9AAGNxcjUVHlTdR5DxPC3UIfb6XyePF5cPChd0Ww8Rck+AvuarPjPFWma5AVR7KDYf3PnW+YeMPiJCzaAeyvgP6nxNCBrWHJk3MRq9Wp+TGqj8Kr/wBHL71zXTGuaSc4yt1lYKhDpAKN8Oa60GjS5AHU2FOvA+XrC8sqoPuoM7W9dFHwJo4djsWDJldRVnfAuMGI5GYhG3/CfvDw8/8AL8ccwzI5LWs1yGAsD8Ng3jbx86KxrgwwjihknkJtr4+hsPjamnBcPhK5MQiuVKnsh7CXNlzHduugCggEXtetvjVGma3FeG4TdtdVz9GcP4VGgQxxd9SrqRfSbKq5h5ELcjYnW168+I8ChlOJMf2bCPPkGySI1mtb9mwa9txb4UyT8dSKPOqs8jELHGotdmsBsNz5DQCwH3uOH8RV3ZbaSG0mZSrxnZlI2GtvnvcVlTnW70FbFXQv8FwAhw4QayyAPN5D3I7+AFyfMnwpV5q4bJJikBBDOgsSDYC7foOlWTxfiWHglbJGZQgUTZVOWIG9rtaxJzezsfEHSucZxU5pI0RgUKi9w6sGUMpUbkWt0Frir5i9zXZFFNJCxwnhKyD6vEVyJ/qAsoZydctr3IO7Ha1l6mzKOEzj9l6ar/elLFYhc3eEadpqjOLxP1OoHc3G4sLjxvXMTtqJIRCq7sJSq/DLowPQi4NTPh8Xm/ofVvhr9Ohw5j5rjgcROquciBgbaHItxmGoNLnMYGUSQ96N1zq3iOoNveUgqfMUnzYSKfEJFE7gMwDPIbKL/wAOYDzNWph+Vexw7QvLEUzaElu49tfd94dOtgelcPW6WGPzeolSae2ys+X+MJLiFimPZx5rMwH+W162Nt7G1qbMRjmhkKjCwrbSxzsfI5i9iCNbgWN9KgYjk+JJM5xWGXwBaT/p0eigV4hGcThnZdEbO91XXun7PvLfUeGvjWHNsfMEXG/Vi19JvFnjna2+WP8A/Uho59H/ABRnwLMd88/5YdWpM+lbFh8Q+QhhZBmF7d2NFNr+YNM/0UgSYEot/wDWmViMpK9ph0QNlJFxf9K1+DHwd1c2Bue6iPgeblDmGVLx3vce0pPVT/7TofLemrB4gi6WVkMUrRSj3kyPceubcHVTfxqI/wBHWY5s8nwg/wD6VOw/AJYFcBpHukgWPslW7vG0YN2k7vta+Nh4CsUsC4aQzf8AIt86tIuNdhqMwsP4Vrw5s43JFgYSN2klHyWL+9G+NcXibFywTezn7j7mNsqgkW9pCRYjyuNRr6ca4HHLh0heSKNkd2OctYhwlipVTdTl3oU4qa3x/wCsjuuH/wBRSz8wynr6mt4fmORfSnpuSMP/APV4YfxSf9OuF+jqKQgLi8Ob7ANJ/wBOup42nqnERUvcXOGc1tnXMNL1ceFlfEYWFo1DavfVdPYtuaqnmbkJ8K4AlRmvbaUKDa9gzIFYi40Uki+tS+F4Vo8oeR2ZjYCON2JPgLA/pToaOE6nj4NGLDmkt1cL1bSQ18W4XPCRIoyNmLRtcEB7ElTY6qwvf4+VeeGw+E4h9owCYqMZyvvExkEh12kUnu3tezD0qdBw+QgK10XQnPvpYjurb8yPSpsPCcDHMJUvJiBu5chI7gi7rGRcEAgKQS1rbXI6s8nlSb5Xt7F5qpW7a449jJZzCViQdmilgqjZRldgB5C+lEsPxmOZwGUCZAUP4kYqTb+IKbeF6mHGwIiPJaQtcoi2Y972nc+yps2pNlUGwv164ZypE4MjKA+fMCGYgaWyg6XFuttbmlITvREg7DDtLKLfWJ0FvERJop/CCbt56fdoXNx2OFM8keaOFmcqFBJYFrEA6XzNmv8AGifFuAhJFkclVLEyvuMuRgL+ABygbACvR8NhSrR9rEwcHMjlTcEWOlw2vrQsiqhAixkuOk+tYuywIS0UN+4Le+1/at4nfXYbq/NPGTiH0uI19gePTMfM9PAepqyeYOFQMhgymMC3ejZithsCG6abfnSbxHl8REZo5WUkAPHlK3PiDqv6eBNb8bg4UuB81cFDHx7323/grOZe8b1wq609cX5cjCgmRUPg2h/Im/wpWxeHCba+ev8AXWsk8bi+THkwyxupKvtAxq5rp965pQk3asrKy9Qh0fKifDMVJGQUcrrtc2+I2PyoYLV64diDVp0FGTi7TosOPmUoAFTcWaXQSNt7P3F02BvsbjYEeVZ4l7VFcsJmRu9csJAbak6kHNvrYga6myrw/FLImUjapuF4l2bpZEJVgw7oBzKcwAItuRbXxp8GpcM04825+b9Syo+F9oUVndCDmDRgkq65iDYAm21MmD4XFGrs+azsjF3DAmS5BNn7wvcXvvmPwAYzickB7eFBIom9m5uYGjvcHowZSddLeF701YDi8WJiRhoHAfJIBews19DY2IB0J2oFdBTk/QF4rluNpZHZpsk3+pGquUe3sMCmgIFt9L9KD4zERwo7EDOdkLL3WQdl3srGwAWxv4WF+hDm/nGRSIMEmeWQf6xF0UXI7gH+o2ht7o3udqqzjMjoWjciVwxz5spAYe0SBfvX8W3v8S27l5ugYy9ZMKctI8hMGGCzm5cmVgEzjUmPQ2fU2yC2puaYpeGx4WAnFZZcS3tG90hsTYJoAGKkA2F/Emq64bxowyK8Ysw9/QEelhpt0p35gkXGYf6xEdPZmUe7Idm/df8AI3FY9VqXBpf0l793C/QRMdIC5ePQX+dOPJ3OkkxGHlAaS2WMMbLOg/Ysfdcbxv493qKr3EFo2yt8BT3yfystkmlVmzGyIujSsNbKfdUbs+yjzqamWOeO+/YTG9x4898MZY+3iZmjYkAkWZGG8cg92QfnuKUeAcddO6bk+NW+vZ4xcQoJkVpFEzRWAlkUFgiMwOSFAushGZyb3tQ//wAPQwmycMJI2LPO9/5bBq4/i44QcJodUm7QHOFHEYi0ihMhGfENoCvg43kk+7l7x633BbgvB4oQv1aFUB0Wadc8shH/ACowGy/wqT4tRrhnBJcQ6iUIFj9mBFtHFf7+XTN+AEsepWjHNnERw6FWhj7bEzMI0uNWPwtZRoAosBcUWPHOceHUSpSSfyCJeC8QZrtM+Ui6lpCnwyk3W3hWo8FjI7id2ZTbL2wEsR8mY37O/Q6DzFCuEYnH455GhQ9krANNHPkR5QiLIFEiv20YZTl2G+ve09eBcaxWGkaOeMo8YvLH7ksWzOouQsig5rr3XAOgI1k9Lt/mbV/P+ilkvqiRxXhEWJTsQnYzJ7CkkAEm5CMdlOpyNpcggjW47AYCQqYJ7gLojm9428CNzGTuOm46g2PxjgUcsd1GwuuW1/Hu30t+E6eFt6V8HxNmBWVUfKSqmW8bNl0IDNbUaXDG4vWHUQy4vLL6foxsJRlyVTzPwXERTBNQSdANb32tbcHxG9PfL3CTgoy872kVbyPuIFOyqPenbYD3d6Y5YkZo3aPIYmujJKrlLnfKb3W/S/j41D45hI545YC2TK5LkX+ykOmcjd4W+9ul/Cm48++KjxwDJc2VZzTzTFi5AZS/ZJpHBHvbX2nbRbnUt3mJOw0NT+WeaTcRwxph027vfe3m8l83ypS5l5dkw0rI4sQdfMHYg9VPQjemb6PuCmVwbG19B4n+9d7CoRhcehKlKxn5l5dlmQyCaR47asrNZfJ4ie76jTzoFybE0bSYUoczsJVcDusqoykf+a4tfc06c5MuHjWNJGzH2wGOVmHlfYbabml3k+YHFrGBa6yG1ydchOhJ09LVui92NtmjdGfLpP8Af6DC8FlLxGNgrRx6Z42dW0RTfKrZfEab00cFQQIIUmkdTmNnzWW7eyCyjSzWtoO6TYUKXm6HCPhmlv2U8RUyDUIyFBcgalSb3I1Gmm9neJISnaxBGDrcOpUgg+8De1utxQNvbQiUvQUeNRyzlSJypjZWRGVzC419rsx3umpJt0te9QpuFKliF78hu7otkzZe92YYZgulgbWAkYA6Uy4BIOHYSPtZO5CgXtJLFj4AZdz0VVubWGtVbxnm58bMztmTDgFVQkBWBIJMpv3rkD7MdAAb61aUpKl0XC20iTjsYsbxvFOUgRbE2B7Z7k9wHdQLDP13FxY1CbmVXzCPNhXue8lmR/8A8kZ2J6lb+hoJjyJXvnZ22zWCqB4KupAqLj4+yB60UnGKpEyZNrqP/pF4ribsWbIGO5TZvO2y+gA9BQPESXrzxGIuTUZnvSpTszt27OWNc1utUBRutjStVlQh0oua3rsKwmsYW1qECHDMSYzTVhOCNLKFSRO89rk5QD53Nh86UMKhNidqZuCS9+SNtQwvY7G2h/K/yrVpYqUqZOUWBxzCz4bDhJHBOYKcoNsiRBR3jvrc7DcigqYDEzwr2Td0OxzO2ayWTKugbIBYm2m/nU/C8Rklg7GQlygIict3iDlAjYn2tQLE6nrtqvwapdVPmB0P9KOcHFuL7Q7d6hPg+HxDzxhpc8quoVgwYL4eybaAvcX2NeHHOXXimdGxMMjHWRgCMml++NbG3etcnqdxeQmLlw8aCC8cjRnNJb2MzNfKerkZd9rDrS5xSURxrEt++SWO5YDe56ksfyNSGPyuT6/cGUvYgcTARRl1XcG2pvr8P6VN+j7jhhmOcZo2Uq6E6Oh3HkeoPiBWYPD5ls4Nraf4KAY+PLLpe9+vSsGbGpJxYKdMeuc+X8pDxnOrDPE/3kP6MNiOhFF+U+PDEoY3uJFg7GVF0LQL+0hHR1td4xo4ufGonI/FFmj+pysO8SY3O0cmmh/A+x87GlrmTCS4WftY80bI2pGhVgf1vXPxrh45fQ988os3l7hy4SGUSFHjeVCjMXyMpRisi9mCxzai23dIOoqaOP4dbKWgynQKskqknwUSlFJv0zChvJfNf1qFwj9i41kUAWRv+aqkEGJj7a27hOYaE0m88cw8Qhco8trGxQpER8ihBB6eN6xy0qnlUZfsFvqNouPlbmeCRjh1URup0WzLm8dHAZXHUHw0JrrnrBo8aGRLrcpmG8Ye13XwYZRY+VutVFyvzAmJVY7ZZha8aZVJZQF7XD7Lmsq58PcA5bpY6VY/DeZm7Mx4tTND7JmjBNvKVdGRh5gNpsd615XKMHifHs/Tj3Fqm9y+z25Dx0WEwy4OZ1jeAstzorqWZw6nY3zevXrQ/iuNXEYqSVFOSOIxAkEF5HzoAAdffOnghqaDgzldcVAwWxXtiQygage0uYDwIrwxPMuBgcO031qa5McUCXGY7kAXBc/eZiaQ5Zsy2SpL3tMNKMXaseA6wRAyMAqIAzHyAFBFxSysZEQKSAbHMWZSO6zohAuRtuQLbUuS8RmxRLTIqZdRCT9nCDpnnbYvY6Jv5DYrvMPO6YZMmGOo/aFVzOfHvA5V8BS9TmllaxQXH9yQgly+xvxfM0Y7q5ZWvbIvaKPzb8rGhr8NeLFzYhm7xaTs85soTUPLLb9kt7BfeNqD/R7xXHz/AG80xMQJygiMdow1IzZe7Go1Z+g0GpFCed+bExBfCxy5SxB7Q2CzOL91r6xx9E6C123uo49M4z29/QUpKrBHOuKOIfDwxqfq8akRSGxMtzdiSL5bH9n7g6a0/wDKODGEgEjaO6/Zj7qbF/U7D4mlP6LuBP8AaPNpCCO0Q2Idx7Ki+gbT2hqBfXWjHNfMOVmubudgNh4DyAGwrq4I7pbF0hUnStkHm+XNZz7XQf7UC5U4mY8UjuRazm/3T2bjS3Xp8KYOGYSHGcPLIP8AiklOa5P2mXXIpOxaNgAPvLUDkzhuHmxH1Wa4EgzwyKcsiOgz2vsysoO+xXa5Jrr7bg2uuhcfcYOcuGwZUgy91SwiVbbvkItqF1bNqbW8RXXB+cViw6SRp2aqRC6Nch2SNbmyjunz621voKG8+Wi7qvIwjCRqWyEtcXuwy5e7lvcjUsPMVvh3D8KcOFEoeNpDIO0YK6vlCsCFPltv60DcfUYm5Ii8U5pTG54GRpZH2YWVEVSHIVXtlNlNyTdiBrsA14fCYfDcPMyxK0hJjjJALBi2Tr7NgC9hbbak3AcHwwleWFpGEemlgoLKQSc/eIUXcnTYAX1IcOLYOKPBpNi5nWK+ZIYrB5mZAoUt1JAubAAXa5sKia6Ak31ZVOKxV3LLoAbKL3so216+vnWuKEumbfS9PPKnAou0XFYqJEU97D4ZNWfL7OjG7IPvOe+xGwABifSVhR9YWdBZMStyPuyrZXHlplPqWqpRbBoqLEjWvJhajuPwWhoM8JFIaoE8qy9ZWqohsVl6ytjSoQ2pFbijvWlFzRPhmDLNpUIScLCcoFqn48HDyq2+UgjfVdivgdLj5eFFeGYMZrE2ylSdNxfX9PzoPzVPeXL0Auf1/r+Va8cdsN3zwRdjtweSzXTUZbjuhr39kgHqGKt/DQnGSSu4w6kKobJ6kHLc2+dQ+GYsKICTZQbgm+hyNlvbUgNlv5DWpMMBXFZV0EZLBdVuVXNa/RSw+VO1LuV/CDXKDPEpVJdjoi6iwOtwGJIOzEnbyFJvEcTnkz2IWwHW4UddN770x8QcdmdSwZja+51JH9PyrjB8BeQMLXY62HTp/tbwqsstkYx+CvUkYLAKIc0ZDMdbi9ttNyb3FAuZcEpUsg1Ivf5USwnaYaQwODYkWtc2J2t5H9b0TkhViwkWyte22jdPgf1vVZoRnBSh9lUV3w6UxEOCbA6+dWl2qcTw/aW+2jUdoOskY0D+bLs3lY9Kr3jfDGViB7IOgHx/tXrylzFJhJlI3B2t0N9D5EG1q4uqwbluj2hmOdOiz+U+WUwaNipSVspyW3VSCMwHV21VQdN2Ogqued8VNips2SwACoo2RF0VR42HWrnxnNETQxyDDrKj3NmI7kgHeQgqbEC1vw2pNxf0iYRGKtw2DTfVf+nWHFOe/jlr8xjXBUR4bKttCPOrs5b4k64bDGYPPPNpG4fJIqKxjAMq96QlgfauABQ/D80YDG/ZHCphrnSWMjunpmUKMy+PhvRzGYIwNgw1gIkle4NwQpll0I0Nwt/jU1OeUvLJEhBLknY+XDkxiRmYuqsM0WHk9q49plBOo361zOuHhmWIBiXWWxURRLmiEhIYQIrsLx7FrWIpV4/i+zbB36QQX+Pf/RqKcbwrfX8N3WN55wQFJIjlleLNYe7Zib7WBpGKHNN8ByfB0/EVxcPZwsA66rEoCoR+AD3x53J6G+lVBx/AS9owIOh1vfT+1WLyxwxMLDH2sZlnkvliuQqhWMd2y95iXUgKLbfCmiPEkShcTgMN39QMiqzG9iFZiQz/AITrfTejwfhZXXJJeaIqfRXzXlC4SQlTYrC1wCQ5u0VzoCW7yE7NodGo5i8Jj/rCoMS5DG6HQAp943HdsAcwOoIIojxPDYUOGHDsORYMj5VF1OoPsd0+I6EGoGM52aaOQJEFZybENfu2GneAtmygm2/h1PRhpZ523jvjsXezs1zdzV2QSNWaQqLAndj1c26t4dBakiPDS4mUKil3c2sOpPQX2HifI9KkYDlzEYqfLq0h1Iv7KnqzahF89SbEAE1auG4XDwyG4AkncEAnTNaxNtykS6FjudLkkqK6WLCsMdv9TEylbF7g/LEeGBgLhpWheaSxOW8YsmUdFDPoxsWKE9LBGbHSpPFMiXmBzE2NieradGvqPHNawNW5wfhdnMkzfaNFI85awsHyBFPRQERtNhY9KrzFRC5VWzBGZL+IBOU/FbU7G3bSJfBziS74dGnIMr5izaZspZ2S9tBqXsNrCoPCMOJGjSRbliM1r6D02B89he/SpPGsQypEmlgt2P4hcqD4WjkU2/FUfEcRGGhs+YTSBzk8j3FLm2gALsE63F9DYL3UgWzz4/iWYLGjApY3EYyoxboAPaAXKtz4fMhwbFPj8VhoXF1jRVGndQLGCxsdGZmXrp7N7gWK1hOIXt49PWmX6OpwuOWxAzB8vqRmA+V/lQxm0nRIu2WXx/gKLAxW+Ze/mucxK6nXxK3F/TwFBOL8MGLw8kLC06faIQP9TLpcDbMQcrAdWU6XAD7L9pGfxAj0OoNKvD0M8KulkxMFg6ge+oK3AvsbMCL695b9avFLhoduKe+pad4UF4hwvXSn7mJlinzFbRTk6f8AKmFi6H8JuHB8G6W0FYrBA6AgE7X2PofHyP5710HpVkjviA0VzicIVNRMhpz4pwt11ZCPPp8xpQSTB67Vz8mFxdA0BK9I4ya4Ao7wHB5jtSUrKMwPCC1tKZIOHBFAXVibaUXwMKiyADMdqmYaJI2Lkk6WW4G9tSPj0PT1NtGPBuaQVcWCOI4cYZRIx72WzAW3JBFr+Fj+tJ+LxEZJIDFn3L2sLncW86JcfxhnlyKSVBsLaknqbdSf83rxk4SEXPOcl/ZQWLG3j4D/AA2NOmrdR6RQcwXLuKVEQQvnVww9k2A1zd07AkfG/jTHiMC3aFRESSGUG63W5c7swuutsp11O1hXvweWXDR4eDE3DTLdFIHcRdESQsdSQSdbZcgGpAqRiC5tte33hl9rSxUBtvd0GWwv1rHkyz6dGrFFMER8AxH2ZYJGsS3Yu4scouT3Aw0A6ncbeLhwHsjCskRBLDvHw8j4Ukc04uRGEJLBXXNsQrbAhbkkgFBcE72+PfL3ERGMhJW+tidD5g/0PzrTHHLKt0n2KnFXSJvOYMb9soX2bBjfTzsRqfAfGl3lqQfaXubmzkk3zePmfOifMmKaXcd0DRf6+frSxw0OJDkBII120I66/H+ajw+SSUugGmGOZY7oNs4uD6jY+hBv8aR8pSS76n/PHrVghUlCLMzRy3CKwAZCCbLm1DAi9ri/9kbi0bZiLAW3+BtWXNFKTSBaodvo/wCOpmeCQnspBZ/wkey6+an5i4oZz9wFo5CCNuo2YHUMD1BGopYhx4XVdLEa1avCGXH4RYzrNGD2V93XcxfqV+I61yc6eOanEdB2qYtck8sjKcTO3Zwp7TdSd8iD3nP5bmmvCcZmxE7mLSFQsfYknKyOREsWnvlcxzbjKxqfw2HDzQxRyyCIxKylCcoN2LZ1NiAxuAQR0FD8fxjD4NcuGszrcqwvlRmFme7AGWW2mYgBR7IrA8viybfY3btRz9IfB2MxVQQLKqfuKqoCD10Xei3O0Ek2DDQ5lZ1WWQgm8llyN5kRlRp0DA148j8VXEoY5VDooZ1zE90qMx13yG2o+NROLcxzYecriQzROQy5SAUI0V4WGgsNNNCNDQ4nNz2/PRbSo5wPMJxohdpFgxUIyMXbKJRqQ6MdFa5N1PjpUyfC3jiw6MJH7QuShuoLZVChuu1yR1NRpsJh8TaSGSAsdzcRM37yNZQ3mhsaaeWsCkRscssh92IZsq295zZFB9ddr2rprF5rrlg3SIP0j48Q4ZSLF5bon7pZmd/QKQPV1pb5O5TxOLs5+wgP7S3ecf8A2wd/3jp67VZP/hSOaf6zi7SsotHFvFEo12I+0Y7lm020FhU/iXGUjRmDBUUEtIfZAG5Hj67eF66+DJ4cNkO32zNOVvk5w0GHwMOSNLa+yNXkc+JPtMbbk2AHQDSJw/hhmk7eaxOlgPZFjcKL7qp1vpc6+VB+TOLLxBpZAGHZvlAbcRkAh/Jn132y26atXMHE4sHhZZ30SNCbDcnZVF+pYgDzNDdddsE1wfvGWQ9Xyg/hUD9GZ6p7ESgsxUjvscoAA7rElV+ANh5VY7414+GKzALLJAXYDZZJRmI/ne1VgcKwdWHuEHrYW11tsNKbj6lIlPhHpi/bV3YdnCnaNaxLyiKPMq73IZUv0AFzfYoXGsd2sl1BVFVUQE3OVRa7H3nJuxPifKmrmfFZV7ONFUZAHaxz3du1dT9wFspK76a9RSQ+9Z2BNnthG13sOpp15S4fK2ITFIAIoXVpCb+z10t7WUk7jQg9RdR4Jge2lVSyqo1ZmICqBqSxOwABPwt1q6fo+xmDmebCYeQSqIr3ysNmys2oAbNnAJH3fC1FFKrYMW0+Cxht60p4i8GIaVQbXBZR7yP7Q/ezKzDzAGxNG+Bzns8kh+0jOR/MjQN/ELN/EKHc44+HDRmeYkR5ShyqSS5IKCw8ww1sO9uKHE6lT/Jmrgg8+ctpicO8kVjmUPpsbd5XHpc38VZtzaqj4Zi7fZSDTazeI90/H5VaP0Vc6LjO2gKdm0ZzxqWuTE2h+KvuNgHUDakb6SOBDDYxsgtHKO0TwF9GX4Nr6MK6v8PzNTeN/QtvijzfCyqLxMXTqh1Kj/3CludArHbU3+dMXAuIk2UnvDY+I/vRqTCQOc0kIZjuR1rVqsLdURSS7KLXemzl9sovSkKYeEzWW+9cLF2UMMRlkmURIXkZhlS18x8PS256DXSi3N8EkFo5BYWt4gDwv1HgfLy0s7kLg2FhjWSJxLJKgPaEWJXeyj3VvuN7jXawF/SzjoFwzqQC7LlQ5b5Xa9v3TZWN/wAJ8gXeM15V0Njx2VHDi0hizRJeYkqWY3t6eC2t631NO30VcnNO4x2JBZAfsg37Rwfbt9xT7I6nXYarH0fcurjcUIpXCxqud1vZpFB9lbeZ1PQfC30PPImHgZ7BY4YywAFgFRb2AGwsLVMmThIAp/m9hLjZsSWzRxO2HRVUtfs0yyZtQFGd219KF4PmN0QK3fcDTIWY5RurX1z5Rv5g616cNYSRSLLmCsyyh2X9tYrJYIb2N9P3db9QPG9SEVmKLewNhqdGIAvYEAdaXJJqmHGVIurnXlBcXg7QgCaMZ4CNNQPY8gw08iFPSqV4filkvDKCklyNrd4b6HZtNV0vbxGl9fR1xLt8Bh2JuwjCMfxJeMn5qT8arz6Y+Tckn16FTlYjtwPdfQCQeF9j52PU0zT5nCVPoFMRpppYXEUlzf2T436j/L+NSuWeCS4ksInsgcBnuN2IA2197cdK4nxgeHJKpe+qW0ZTtcHoPyOu+1Mv0PYaATTyGxxCR/ZBtBk95gfHNZT4Aj7xpmeST4LTbD8PIogUsrsWtexQHNbX3tL+FgKqnjWY3YDQkk6bkknbpvt0r6bONjaISXujKCvibi4AH3vKqd514IqzSSLYo/fAHiSQ3p3gT6MKxtt9kl0VHCgAOew8AbUe5R4k6Sr3yO8La2t1BoRj4bSG4tv8K8jYMAh1O5pOTGpxcWBF07L/AMTgcPiEaftBG1wJbIWAc+93dg363pUxfBcCSQ2NHn9hJ/elnlLmRsNLaTvxsMsinZ0bQjy8vMA0W5z5eLJ2sLFoyueJh76eB/GNiOhFcR6d4slN8P1NanuXAx8vy4DDlsuMBBR1t2Mg1ZSt/heps3AYcSsKduGjMhCsYnGRnGg1I0YpYC41PnVB/WXBvc+lWFyLzQR9lJdlawdfFfLwYbg9DWl6V4pLIufcCOTdwXHwj6OsJDYtnkP4jYA+QSx+ZNMbmGBAAAi+6qjc+AUbmljC8ySARRO8edwezlbQyIDZWKnRHYdPe3HgC0MQU5mJdzuzb+g+6PIV18aU4qV8GabadM9pHaTWTup0jHX989f3Rp69Kp5+48MUexib7FG1t+1dev7inbxOv3TU36T+eBEDhYj32H2hB9lSPZv0Zhv4D1FKvI8YeQFx4WH+dKOTrhFR9wxybHisC/1hUDpIuV4i1sygkqRf2WGtj5nxvUjiXMj8axOHwgiMWHD9pKC1ywUXOa1gABdQNdXB6CnDi2CLRlUNjbfw0/WgH0ScHEc+JlJB7NBHm6d4lm+QQfOqi/UL1CM3EYnjOQjEBTkDhrp3TcEBCAxC5WvrboD1Fx43LEw7MW9oEjckXPW2bW22nidqDcE5jaWfEg5CmIfMpChFzp3lOS5sWQXPeYnJ13DBgcGX9ptAPtHZhoBYLZtWzMb6eZsDal5YtcM0waqwJzbACj9kuYJ3mJsSwQd4jTQAX9QL+tYYqUsddLbDwq7cdMio6RpcMpVma4XKRYi2jEW8co8QapiWylkAV8ouWC306nuaWHU0nBfKEZ4W0wbjXuAo2XU+bH+wt8zTH9FvNkfD8YZ5VdkaJo2yAEjMyNexIvqnjS1jpi5AyqoA0IGp9T13qIjW0p7Fro+huDfSBBjMeY8OkgV4iWdwBdky2soJ0sbEn7q6U3868L+tYWTD270iEqegdCrLf+K3wvVBfRJME4lBf386fNCR+a19OXqrqXAxdHy/yzxObB4hMREBmS4KtezKwsVa2vn6gUW5i5pnxsqNOVCrcIiCyrmtrqSSxsNSemgFS+JcOU4jEqOk0lv52qDiuGWW/WuxggozUwCHFcG40IprwOOVkBJAOxHnS2q3APjv61Ojw4tXYzRTpolWVWKO8HFxagNTcDi8leSg6ZC1uVOcxhI4opIyyxyO2ZSLgODcBSNdWJ3G9DOZ+aTi8y2CpnJ82AJCX8Cqm1hpqd6Sp+K3oecUSd6OU43aC3egzYFpI3WWJiro11Ybg/5oRsQSDvVqYznD6zw1wTkncrEydD3rll/CQrel7HoTU/BZ76VYPFsIkcMXRlQEnxO+vxqrsFsXuO8XEZyLsq/oP8+dAMBju2ezG2Y2BOwPnpehfG8TnY6+0fyH+D5V5cOhNwBQXyRF/wD0S4nslxGHY/6bhx+7IvTyzIT8al8zc6wd+KOMYkspVh+yynQhm9/r7N/UUp8I4d9YjSUsVzJ2cqgnvFTex6EeoPSueL8LyKfW1/I/9hTJJdhCtM6AZb+p/wC+tvzqbw/jUcTiSGyutwDbe4sQR1uP0FJXG8SwkKg6D86hYTFlTdjbwH/alNlWX1wnjs0sCKcilRlUrcWHiFOma2ma56+JrfFMEqQ6772/qfE1UfA+ZGRtW10tei3FucnYFFNz61dkbsW+ZsQpdlUC99/jQ2CEAAj561uSa+a5rjBoGO9hehKJGIzNZjsPLwqx+QeaYZIxg5iq5j9kx2WQ6a+CtoD8DVcYuRhdR6AX/wA0rxw8uQanv9Kz6jBHLGmHCbi7Qd535eaGZ2CGxY3H3W6ijfIfBUQPiMQPso7ZumdzqsY9bXJ6KD5UY5Y4r9fiCkr9YiAWQuQBJALDtSTu0YIDHcqAehoVxzi4nkEEGmHhuq7Aux9qQ/iYjQdAFFZ8ayS/Dn0vX3Dk4rzI55n4s2JYsx3N2I2tawAHgNgPAUPbm3F4dQIsRIFGysc49PtA1h6WrfEsSqx2Jt4ClRxnNyeugroRW1UhTd9nqZnkkMkhLMTck9Sdbnx1NWlyFACV01qqMLK2aw1O24q3+QcWioNdetWihx5sxoggOW1yu5/zb9aicjxqOFYiWV8izNKzOxAsoHZXv01U0L4sqYvEJC8vZxgMzNpeyKWJ10vYfAXNeWN5xwUEP1eCSYhAVQANvcn3xlOpO4trTK4pBR7sROWMdKskWFByCTFRtmN9GFlA8wSAPS460+8ZbEx96LDbA6s0dtR4K1yQfPx8TSdyrwmHExvM8jqsOW6KoJzG57rbgXGgAJufKiDY9e0WCNcT2j6IZZJF11se8QLafd6Uckm7YcZNIgzcbxcRczxh+0U5LgWTcXAXS2uoOp8aX+CcZkwqyiNQRNF2bXJFvattvvfL10o3P32HbyMFz5WY3bsxmsTa/eseg3oRMezlDLZ1je4DL3XCm4up6EDY+NE4Ay5F7GSMI0jtorMwPm6xqR5f6Y+dQF0NzTLzHw7LNIt4yQ5b7I3js3eshsNBcDbpQRMKx6VnkuQCZwjGGKeKZdDG6v8AysG/QV9Z/wDxKLpIp9CDb1ttXy5wHsUnjOIF4gSWFr3spKi3UFrXHhTpiOdcc2QovZ5yOyRU0Kk5QBtm100AoowsJHM85+tT+c0n/rJH5VKxaXWo+O5hOJMbSoEnTMshAIBsRl31uO8CP8EwuGUWrrYXcUUxfwy2LL4G4opHtUXsAJR56VHxzXc2Og0+VdDxltREVs62risrK8syjZNdxpesrKiINvKuE+0jB6sPy1pp5zx+jBTf3R+lZWUZJFYY2S7m3TT5f76/GjfBIrWasrKFdlosTkjilpGibQSC6+TD+4/Si/HsQGVk622/zz/WsrKa+gn2VDx/D2fPuOgoRYk3I/2rKyksAyZbWC3udzWaqf1rKyqIclrm5FhXqjDMLfKsrKhCRO2Q33JqEG11+JrKyoQ6Z9QFJAtr59KO8LmEep18B61lZUIRuIYm5Jb4UJkbvd071lZUIe2GGVrDXzp25ZxOUXbQfrWVlWiHjxbFtJiM9zYEZVBI00uLja+ov50MxwY/sci9pmz2Ymx0y5zoVH61lZTV0MHDlOXNPOhkDtPAjhoxkySJ3Mo19sK976A26UF4rwllkBWOdiGu5mZRmAINrg3HXW/pWVlEWjpHVjIqx9mrN3VzXC/xdRfWjGI4Ws7mWadS7WLWAFyAB08h5VlZRlEXjfDIVVVRgW6BddOpY/0FCE4eALWrKyq2oGuCKuCYyKqLmcmyjTUnTr679KbU5Lfsl7XEojC2UXc5Nb2BNgD6daysqnx0WgXxjg0uGZc0iyKxJDKSdTve+oPXrU3h8vdsaysrbp+iNEfGPrcVEtWVlOIj/9k=');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: #ffffff;
        }
        a, label, input[type="submit"] {
            color: #ffffff; /* 링크, 레이블, 버튼 텍스트 색상도 흰색으로 설정 */
        }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function validationCheck() {
            var fname = document.getElementById("name").value;
            if(fname.length < 2){
                alert("이름은 2자 이상 입력하세요");
                fname.focus();
                return false;
            }
        }
        //Double Validation Check by bootstrap
        (function() {
            'use strict';
            window.addEventListener('load', function() {
                var forms = document.getElementsByClassName('needs-validation');
                var validation = Array.prototype.filter.call(forms, function(form) {
                    form.addEventListener('submit', function(event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();
    </script>
    <script>
        function trueOrFalse(abc){
            var trueFalse = abc;
            if (trueFalse == 0){
                document.write("X") ;
            }
            else document.write("0");
        }
    </script>
</head>
<body>
<div>
    <div id="header">
        <a id="homeTitle" href="list" style="color: #225699"> 유희왕 카드 도감 </a>
    </div>

</div>

<div id="space" style="margin-top: 7%"></div>

<div id="resTitle" class="container">
    <div class="row">
        <div class="col-12">카드 도감 업데이트</div>
    </div>
    <hr>
</div>

<div id="formdiv" class="container">

    <form:form action="../editok" method="post" modelAttribute="u" class="needs-validation" name="assignment" onsubmit="return validationCheck()" novalidate="false">
        <div class="row mb-5">
            <div class="col-md-4">
                <label class="form-label" for="cardLevel">레벨</label>
                <form:input type="text" path="cardLevel" id="cardLevel" cssClass="form-control" required="true" />
                <div class="invalid-feedback">레벨을 알려주세요</div>
            </div>
            <div class="col-md-4">
                <label class="form-label" for="cardName">이름</label>
                <form:input type="text" path="cardName" id="cardName" cssClass="form-control" required="true" />
                <div class="invalid-feedback">이름을 알려주세요</div>
            </div>
            <div class="col-md-4">
                <label class="form-label" for="cardType">속성</label>
                <form:input type="text" path="cardType" id="cardType" cssClass="form-control" required="true" />
                <div class="invalid-feedback">속성을 알려주세요(e.g.빛)</div>
            </div>
        </div>
        <div class="row mb-5">
            <div class="col-md-4">
                <label class="form-label" for="cardAtk">공격 능력치</label>
                <form:input type="text" path="cardAtk" id="cardAtk" cssClass="form-control" required="true" />
                <div class="invalid-feedback">공격 능력치를 입력해주세요</div>
            </div>
            <div class="col-md-4">
                <label class="form-label" for="cardDef">방어 능력치</label>
                <form:input type="text" path="cardDef" id="cardDef" cssClass="form-control" required="true" />
                <div class="invalid-feedback">방 능력치를 입력해주세요</div>
            </div>
            <div class="col-md-2">
                <p>몬스터 카드 여부</p>
                <form:radiobutton path="isMonsterCard" id="isMonsterCardTrue" value="true" />
                <label class="form-label" for="isMonsterCardTrue">&nbsp;&nbsp;O&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <form:radiobutton path="isMonsterCard" id="isMonsterCardFalse" value="false" />
                <label class="form-label" for="isMonsterCardFalse">&nbsp;&nbsp;X&nbsp;&nbsp;</label>
                <div class="invalid-feedback">몬스터 카드 인가요?</div>
            </div>
            <div class="col-md-2">
                <p>효과 카드 여부</p>
                <form:radiobutton path="isEffectCard" id="isEffectCardTrue" value="true" />
                <label class="form-label" for="isEffectCardTrue">&nbsp;&nbsp;O&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <form:radiobutton path="isEffectCard" id="isEffectCardFalse" value="false" />
                <label class="form-label" for="isEffectCardFalse">&nbsp;&nbsp;X&nbsp;&nbsp;</label>
                <div class="invalid-feedback">효과 카드 인가요?</div>
            </div>
        </div>
        <hr>
        <div class="row mb-5">
            <div class="col-12 d-flex justify-content-end">
                <button type="button" onclick="location.href = '../list'">Reset</button>
                <button type="submit">Edit</button>
            </div>
        </div>
    </form:form>
</div>

</body>
</html>






