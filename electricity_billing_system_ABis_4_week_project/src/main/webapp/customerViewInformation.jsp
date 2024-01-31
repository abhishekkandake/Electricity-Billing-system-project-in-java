<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	.d1{
		margin:0px;
		padding:0px;
	}
	ul{
		display: flex;
		margin:0px;
		padding:0px;
		background-color: #f2ebeb;
	}
	li{
		margin-left: 100px;
		text-decoration: none;
		font-size: 20px;
		color: black;
		font-weight: bold;
		font-family: Arial;
		list-style-type:none;

	}
	.d2{
		width: 100%;
		height: 700px;
		background-image: url("https://i0.wp.com/asiatimes.com/wp-content/uploads/2020/01/Vue_ae%CC%81rienne_de_la_centrale_de_Civaux-scaled.jpeg?fit=1200%2C800&ssl=1");
		background-repeat: no-repeat;
		background-size: cover;
		margin-top: 3px;
		display:flex;
		align-items:center;
		justify-content:center;
	}
	a{
		text-decoration: none;
		color: black;
		font-weight: bold;
		font-family: Arial;
	}
	.button{
		border:none;
		font-weight: bold;
		font-family: Arial;
		font-size: 20px;;
	}
	.se{
		width:80px;
		margin-left:0px;
		text-align:center;
		border:none;
		font-weight:bold;
		font-size:20px;
		font-family: arial;
		background-color:#f2ebeb;
		list-style-type:none;
		
	}
	.btt1{
		border:none;
		font-weight: bold;
		font-family: Arial;
		font-size: 20px;
	}
	.d3{
		width:53.2%;
		height:400px;
		border:2px solid red;
		border-style: ridge;
		  border-color: #def8fa;
		  border-radius:15px;
		  border-width: 7px;
		  background-color:#f5fafa;
		  box-shadow: 0 0 20px #f7e4e5;
		  
	}
	.d3:hover{
		background-color:#f7f1dc;
	}
	.d4{
		border:none;
		width:30px;
		height:30px;
		margin-top:10px;
		margin-left:10px;
		background-image:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAABEVBMVEXLy8v////5+fn4+Pj39/f29vbw8PD19fX09PTz8/PMzMz6+vry8vLx8fHOzs7Nzc3Pz88AdL38/PzqLS7Y2NioqKh/f3/AwMCgoKAAb7zq6upmZma+vr5sbGxzc3Pc3NywsLCIiIiampqbm5uSkpKFhYV7e3vrHh8Adr0AbLzBx8pdXV3O1tbrJygmgL+rvcnqGhvoPD1Nj8FtnMPpNDXlUlOgt8i5w8pZlMI8iMDwxMTpRUbXqqrmS0zTwcHamJjx0tLgdXbdiYrUt7fiZGTpCg2WuNeAp8WKq8bA0+Lwt7f14+PsbW7rhYXkXFzsmprup6jeg4TVsLDYoKDfenrakZLqc3Ta5OztAAC+0+OdvtgUO1YuAAAZhklEQVR4nO2dCXvaSBKGhQQCBAgZc8o4YBsCxhwOJByTazKTjMlkJzs72ZlM9v//kK3qQ2pdICQOZ5+txC4kQPTbX3V1tSTbUuJ/3aRTN+Dg9n/C79/+T/j92/8Jv3/blbAEdpCGhPz4nJws5JO7NGEHwlIiJ5dyipwrnc5ySiqjmi2jKBlmXt4r4QmpPIbNSZq1StMwC9spQxGeGsnPoFlms9I2TFXZHLMhCE/NEmiJRFqvVGplM5+LQ+g9cO6U5obMlQnjhmjdQviI2ERzCGlcE8YgHTcTPkY6bjZjqn3dllpm1n88biJ8ZHiy4GTyz2Isg4yQc5I7Ej4uPmoCpZyzGROZ+k1Ta5kZHxkDCQ/CJzuV2M3Jvo4ztjttGI2qdzQGER5GP9mCdDTfkoQ6GRouM2dZjm5Zzn6CIUodTDiqEpKQAwb1nMvJltv8WhtJFuQhD2WH831XkKp8MF75DkZ/Qi4g7U3Wo/R4st0Wq6P5i3KWkwOdUwuvNptdznKinJQx0brCQk5NhyC0AYUDe3vaHX+y08kOx58TI3Jj8IV2aA4V01sJ7QiV/bpsxz537d745EbnR+ZCxLEIiKkthMIQ3NJzj8lIpCaakFFdYzGIUEhlO7vTGEW8gfLGWaZ6CYUh+H0ZQcx26ljB5UvBhN8tIB2LmG1IdRNIyMbg92msuHEmVF/CU7c0smHjk1f1dq1lr4ql/yVAgpiQYFbUTDPrT5j7bgchNZJtOjcVzKdJP8LHn2WULQ5FNCDZ2PnUS3j0Ru/XUKPrG7LMSHkJH4WEgiCK4BT6xCZHHuToSGxKJhPRQZh7BBIqipcOdyoup/BXkofcwTdgSF3d4HKYjkTJJaHs7hwlyIndK/Nt0TkPxJ9TDt1DOTYnoog+hDmf5tLOsZwjZJwHD3KKbHc462+qA+/4UE6xtza+FjDMLq3dZBch0HOVrBbRVjLRFGtbhPDf4ptuYMXJ622mHALC0UNuQxGv6Mm3jJOwBE/5Hy9sL4d5524QbiTZ7bysmE4TTXvCkBwS5uyBHM/iHyGGAUirS0s3xU143IbJuQMdF7JpF6fEViEjEkKQHugTgyz1Q+Igx8VcU4dsWiTF6SkJS+9+PQxiDuaLqzobiDahcuwgVUq//v1D6RAHlkuJIhuISYFQPraESu7T/f2nQ3woLDHMKhDCQEyLUXp0Qjn/svc5f4hPxTkfUo3RUrM2YSmZOzahkvjH6P6VeoCPzZWyHZjziy2zIBCmckefxBK/jUafh+rePzeZK8kdLE2BsGQTKscnLP2zdz56Y+wdMQnzxXWHJFORcG/zb3KrYxtK6ffeee/t0AcxmSSv8nVKsEtyl0vcACEk00JOyKU5hT7LGpHczSk7vJN7JBy9GxoUMexhk5ZLciKrC8ieJCG8IoR5N+GWhtkHZsdjRne5nPUa9tGsXfxJcCRKXxsGQfS+Q2x9kuGIgHzLx9mEskiYDNIw6bcl7Ex64O3uZP1sf+ePwEGmOT9/btiIivMtnuPwrvHZ7XACoeIgpH3nfgvrd8Xhkhu27OHg2bYGFHlU+gcQ9gyO6NtVtvMhDXQWYcFFyBt7HJPVZ+fn5yODI+7x0IEaEnP2yQEt9+P9OY/SPSMGa3hUK/3WAwlfGAdAfByESmaEQYqzxd4R/Qn3OQ7CWOl3DFKc8feP+CgIlew5GlRtxv4R/TPNkQkTOArPofI2DoD4GAhLP2CMnve+OAn3hCgnrk9NKH8iMXr+zHCbuo9p6vSEcuolJtLz+7fDgyCekDBFvivK5x6V0AvIEFPspbZLhXT4wJdQOZ6GivIXBbx/5UfoQNziUvjldGgBhClHh4XtMsGFahIBJFnmvPeXLyBB3HJYHzLqyJOoYTdAw+2h4X/gzY71LOtf5T0FHD3T/AEpIm0vPxA5RFLEYF5oYJK9MpkKIIygmquXU6wDeD/4WDL36SUN0fPezwESskC1e2lno4RNF6HC27DDkYIwAncnSz8+H1HA+z/dgEOxgFN2bYtogRraxwxywkuitACK0R4HfDd04f3802vNjRiD8AY1LCSdGm7BC3QekIDdsvwbHYIQou+HDrw//v281/vw1qNiNFMYYctNeGDLffrMAUefRbw3P728H533njvn/xiIgYSblYlr9hBkZ9gY36v3I1wK9/6tuWvUyA05iYbJ0q98CJ73XugW35fXZPf9C5/MGlnFUxAqym8fzjngZ4vv7XPCNzr3KVBjqHgCQll9wYegnUWHr17Snffv3wRMjWa0Vh2fsPTjy5EF+BOlGb55T8M2SMAYiISw7SJMHpCw9MPIyjF8zTv8ie27/xwkYPRAtQjV42hY+v1vLuDoOU0owzcsakcjT2mzB8Qja5j71coxo5dUr+Gr8xGrvv/YAsgQ0/AvvEPC66MRln61ckzvs0Qj9E9efL/YGKFOxFSKO4EFH6TT+F90mwjFAwkuuMu2vSX3gw34nrZ4+K97v9JtI2J4DVMH11AghS/lkz0Nvuc5hgO+CwcIGTWZ3mIpx5ZSuq76EKYt3Z1ue8+535K2oieVemFlUTbPD7/sDIgqcgbBpRxOtGSp40u4oW/cjhw55bvb4Ur/tGrtZ3QMGm8s4vCANFC3Ncp2SgCh0PtWlKUcW/bIpgrZpB424pRPPSuN8pzygmfRHfioiuHNX8Nk2q+ZmwTa7PBB7jdOyFf0doxunyaiIwYRbhI/kqXy1iB8yWtRVr6NQqZRwbanm62EeyPjplgzxf0r1sw/uITuCxZ7RdxMuEfL/c6C1LrSO3zHVB39vDOgoYdGPB4hH4a9P60g5ZnnzWYaf0Q1ZGT5EqYOSWgrZg3MCBoauhES8WiEMo9SPhcab6wTGRvWhJsQzVCIRyNUeNH9kjfRIhTuwdgJUQ+F6EdYOgRhkhelFqEVpTAfHhDRIlQPrGE6+XrkjNLhc6vGeb1jmOr0G0HMwD+wQOdHeBANYSDeO/PK8L3nfM3OKha3qpg5noYp8zmb37kMb61CFbF1QR6n04Oe0yniY9EwnaNrC1ajQTMlgfA126fr1JEYpDsoJXXM6/ZeCNSMy9LC94yvhqVUCl+Qpi9iD2yXTrt2prlLi1vkQVpwqfwzEpY9PsELYXre+/eQC8ZZDQ7LH3r3OMYiaRB5YOGhS/lrSF7L3iI4395Kiy6d9tnJnPIDSacjAoMq/GyLSK7j61Sc7U63HQ/UoA8N1NCtXMbaEnVL27plNjnWtSVa1xARSZgJIpJbLx1tt8wN5XGqJ1AF89UwnfKTRxQ/uMt8HXtnqkDWS6O/hlRD42eBEOrVncQTzNiEGEjoYMm4XFRL0tufeq+GtGnWiSgyURqOZu9k3nQTlnDfJpNVIp6nYYgvbBVxxohqxWBEf8KYUm2w3O8faOZk8SU9s2u3L9EJNyAC4dPOEQkzOXIK+J7HqXW6jQ7EGGYGNNqXMO5w22Rp+R0JVCtOX/X2QljUVf9WH50wk07hjV5Q2bCmWfN+71WMKEVEfxXTRyeESvEf9+T0E22ZdULq/E0sQr3oPxZPQAiIqOJzDjS0zinGAgREzU/FUxAC4m/3ZN6nhPSM1IcYk4WN6FXxJISA+K8P5/d/GAJh76+4ElLEdJZ+hOUCCLPeVrnfmRW2Qpp9iLT80wdY2ZNmGc4iIDId+VbEQIUPyGa526ChG8lJJmxn8X9Yxx/Kb+8/QPIsFo0vZLqAGC3ivyJ+sYduV9TpFufR6TM6fdpSEZuVzVLAbDZYQ4El62Xb5rIWfEYgIx9JDAq4L+8kbNvwM2Sa0ash08DXEaCizlyRdoPD6ZaDsUg/h31cOudP6Oj7sJbxOuExY6QOLFXGBuOMP0JAkUkPcg5S3UFmORyLWRsx46sha4UYgoLymSAn9JzTCaT27ky6rBWxMO09+3nobSiNP3quwu85j3huRIeGba+GzgY6RQoUMFhzulp27ysXpde93l9Fo+hjeCZnMZnPJwvJ8H1BoFkqkk/xJdwlNLdaBm+XzX9FcyNmWl/+fgbFjT/gejluoN2Ol/PdGEXEAxNmUkrJ/PjLbDXu96GlqlfFt5J/23Vp1WicMWs0VouoiDZhau+EIF7m2wPVARrZ6C8N03VkDFR/M6YNQsgwG2friIi+hDsl0EA+Rf02O7vlDVw9TDDS3IjZTFnyBZzfjmdzzRjMp0zH290QJSujHogwI399GHO8/nS+wFPw0LVFNRSiXpxBhxgk3Uz6LFQXvuN1G6I/YWw+xZydsVHU6K8HFK8YApGd2h5MrHcUjQU70HS3OOWBeggNM9lfbnmWGLvSoC+iprOZTxpM1rPpuHG7Et5kzFksTHYSkamYkfevYSY/veVZ8GzO52wL0VBJgYDnidPkp7tkebhYTABtuQI2TC2N/kyEMVaU8GG3aZEh+hHm4xGmv9mAZ43x9AFm7QG/Ix+snJKzKsyOHz9++/btlwcE65/RjMvS0mzgYDEeyDON5Y6EmoSJ7RCEXwXCszPW9H5/zK3f5/tvbwUy/vLlAAahJhKyMOWhq211mkYeIWLej7BAERmo5fIhXTb1i7PRoQ0nzenc0DXaUO6MtYPQ9ewGRxCVq0BCbm5SgSUAUflICq7d2Br98XI9IfqhFZmD/8bMjlLcoTGHD4rsO5WNO/JG4iUzd/XEn3AzxGaXTZmQFJckb2wEpXXnbX81e5gvBkU+q9BWW14f0xdDptHsCPRzRZcDM9SOl1AtZPP5LP1HXd7X0Yf5vPhqatlMi/x03WJOMiSOPGvwkdb2cViupsvZw3o+oTMFQyKdT9WgWlnD8GxBmW21nFu+TjPKXV9CSxTq/Rx7lmBZX5SXIEr4MTyF6gMwnBPAFouBJKRWnYVVkFkSLo2Nrwsww/AjVLOsnQ6Xt7eCn7UcQaSmGwO+YmUL+S1QzibO2IS/2OFNtun+hPk9GEfUjfm0H611BJDFKFTekd4fQGjJ4yPObogwiqACb6z1qICTszgxyggrB9GQIOoDrOAas63No0PWo7QxpyuLxnSXwD4aISAOxmQZO9mQTyjbYDJ/WE01p9RFPtffLqMCwjEOSZhPsixxNoPS1M6s1i0/WJPDzPkwJYUpFLELUUa9uGzwmTAiH9hhCbNje2q/haJlNZ2BPTyswR6g5p6O+6QqsEsALLp550/GtJZZLWIAHpgwvXRXNA2H+VQ5/dmE1iISq9X6az1yIiYHqiJh+UCEma9nu9bgUMRNB5iC+2QE9x8GcQSEwpQSOjU090aYT39d7VCBw0v7y7lkaMXJChfCjfHacPBJXidtcYcmzGeyk2k/BCSuLVawttBh7aQV57fk7CMupAK1cbhARE3S/QhNu4UF9hXNwYOsagzms3HAsGMLYYB7mCx0a+WE5xInPOeIgoRRzfUWILzaRCiSety256lTjaJRlGBOWI5diQaz6xJWFwOpSOBowyRwC81g2xIjkzTHA8FJ6CTBSXSnRA8VSFjwEySUc78FELF8o2ukAV1f4BID14N0SmT9bQMSR2WgjnnJudfzGuulHBL+F/0JoWmFAv53O9ps4gr5grVdKDjfknc4VQeR+KCxzhPZWBJt+k4uxDvpwwDCMFawvQWD5u2cbL48ny00sWd5PB3eAjUsUF1cLmD3JpcvZPL/GTduZ7qrzzURVAslpbtvwnSRFqChX3sLLhfS0h/HsL4YQ1Ud0AQsWKGvd1YnjGlBhBvJQjjBMh/JLNGfzQe6df6bj0fYU1xM5rPpeDw3DsQYQLg/y67YAqHR74+neOoJr1xjSp3P1+vZqt+nFwkbqwnMEHvnk6RDE+bVvnuCDyq+b1fzwFCOYQfXMDPdoTAdPyz2jFg7PGH2a2hAXFmsJvtFZITl/ROSk6rkOJmv45AqNhrLyb6H4mEIs+mUauLVs69qBjdVvF9hK11/tYa14H75kPDpvgmz6ezXX6DIvkUbf0uRsq0437SGgoQzXs4XAakUJpbHRJhOfXzg153IVZclHixv6kVYQ63cl2rI0qmxmq0XUuBMUZyPJ3pkQG3PhGn1P9YdGGfjJU596zVBVKEEhsmeX6pBW62muHSa4P4NwWmsGo15ZBWR8HJvhFn1lzOON10vrOtJFJE0UrhYwy/wbxt5+rpx1jf2S9gyobkq/XK6gt8WfkOX+riil7cb/ZljTDHESKGmGYMV1AJRAQMJPRoKrCpDUvEh2UEpU//hI2wquVKiRl+4c6hpRWMw62MhsF8Nc61WHtutEizqGY29xbCow2ezH637E/B0mTP4QMXdEPGcgD5YrFe35OaT6IVOICEj87iA3WBZoThrjGfzBTn1wj9IN0kfbZeCoOGNpesZn18aqwV2jWZECXOtVvMltALTxaJucOMzwRqYSh/mkwFLJ5KBYud9EdnFepKB8J7ZNd5gY99dM16TUy/GZDXbJ+EGsQQocXd65riL5ozfSAMLpvUab/TFk7DZgsGvBOvW2ZoBWUY9zKarsfUu6xC43ICG4lWoxiqCiMGEO1tBXQYULeyGCxhR5K6hFdh0OiX3L/Txxtpb/6sYWMY9LMiyuKjjOfDGOsqsGEC4OyDmmsmsfxvxXiFvp0C9sNBxtagZ0pyc419FSjdNizAdl1At5MuQ/WDRvu0umi1st2dYxg0wT8F0YUC/0dMgg70RKq2WGQlRLZSxNDMG8/WD+3a8EGR4XQbT04KdJC7q2mC95Am1v4hWufkRpsotM8JAZIho9AQ35kW8CrrCIec9fWGfx8Cbh5YzTEfkrihyfhwnw5l961hjNohYmjZrT564CbNGZEKOCJCL+cCqPqXBAk89zcmV34cZNbwQPJ/jDUTC/V46+SmL+cNSmC/Iwj/iwlGrNZteQtWIlExdiNIMb1dbO28ttS/ge374HvZouPJg0S3G73IS+fwUEl56CaWIqcaJaMxpyiHX75dEM4jDgdOosiAruaLvuKRP6WDh765yd7Jms32xZ0IbUR9Ya2FrFOJs0md21gicC8/YJdPZfBDzHGqzWbl76hmHzVb0gSgiQjWCs0fDI02ICQOS6gSGZ8zzUhikN3fVqzYQmsKM327FGIgiIsmqRQ0vjq76jrPB3pmC7cbT4us53nuja/HPSiHh1UWXEIq/RalSjhWmDkSGySYPmChnS7QpmUNoDTedLklqxZP9GrsdMzYbs2az+fSi22k3QUPh71tUjFY5Tpiqar7s82lkDaEL2dSZYkkZvi8yZiBh8+Kye92ulU1T+CudzWarHCtMPSqeyLQmSTTdelsCQvuv5SbK161yORZggIpHtzYOw2q33TaAUPi73GYVCOOF6aNA1GpAeEkTTdlUBcL0da1cLsckfAyI7TYE6RP8dd4Yk+LfVm9f70HEk49FkLDdvLqrdiv41+PNvECYMKrFcuyRCCq2TovYBrsgQYrDUBEJzU6lXDZii3haRJSwfU2CFIehWRIJs+2qUTbii6gWTomIEj6569IghWEoEpaMartsGK18bMTTqag1AfAGJLxqVzBI8w7ChFl5iqVG/Dg9GSKJ0fYTmAzrNEhlJ2G2Vq2DiEZswFMhaiRGr+8uUUKJBqmDsFSuX+Lvio09KZ4MsU0TabV7QyXMuggTZq3bxYo4Znl6KkQyCNtVGIVdlLCsQiZ1ESrlymXF0A1tD9nm+IhFAnhzd9GtslGIQeokBBE7l/iLjfC62PeGSAHbF7Cq6DAJZS9hstWuPsXLKNJ3h0hDFKZCiNFKBaY9JqGLMGFK9SdX5Mbe7yxQtWYFAbsYozc4F7awYvMhTLaanYs6ud73XSEywM7dRbUKMVqzRqGHMKGW292LCkEsF76XqR/mwQoYzIQwCEmMooQlf8KSqVe6dxVyVdLYw2A8BmKxJgBWK7ioYHOhH2Ei26rVq3cVekWkFV/GgyNqUrPCAZ/gRAF5FNKMmQgihDhtAuINPQG2BxkPjMgErMAYZIC1stEy6UzhT1gyEfGiQw9QaxXiMh4SsUhHIABeEcAbDphJBBMmkma5Xe9ePGlSRKml5uPF6qEQNYuvUnkCY7CKCjbLhp1HAwgTWdMAxMuLCl7xB5PKZjzGgyBqWs3i61zcXTzFJRMAYpYxE5sJEwXTaFaunt51axSxVtNbajYG5b4RNai6mhXLqnd3l9UqTBMYoghY2kaYUGEsVjrVy4u6xYhKqtbPAO1qiBj4Q4W7GV4FQPXqTgGrHX/AAEJErLVvuk/vLis1wSSohmAYR7FWLb500IImlJ+Vet3Cq3QuIcVUq9XrdqUtkSRj5hIhCCFQy8U2yAiVrIOxRj4lgtXa9b0b8EGGuQQBryoAaFDAkpMkiDCRN1swGOtdYLzoNCU3ZQTbMyLE6dUF5evWSYT6AgYTJjJmC2W8AcaLu8urdvPxIAJP/boL4YkJptqFACUC4hBUPRzBhAkZBiOMxsrNVfUpQN49uYKlcxxOMf1Ft/rNNQ6eu7sLlK/avcH5XmICZr0YGwgTJRVkNICx3ulWnz69vCCHfRLDLvdg2ApsBsHr1DkfCmiXaiEJsbwBxjJWDghZBUxs5MUp7RK6GOE4HuNDAfO+DJsJsb5BRoOUD/XrzlW3Wz25dbtXnet6BZvUrhlcP9WdYkISJkoFwliGWZYVSfvKFzHyDF0PNms6l89Uk0EAWwnxt/GZFNLQpRqe79lHvohjbUx4koHqcT4luPkhCPH306oIiZSPylh5lc9tanwoQoTMqqz6ap2eFNvAq0HVL39GIURIOauq0YrSw5iaTwZkl4iEnFNJ7uPPzMayVFIOwUbtv5MLi5DII/cPAAAAAElFTkSuQmCC");
		background-repeat:no-repeat;
		background-size:cover;
		mix-blend-mode: multiply;
	}
	.d5{
		border:none;
		width:100%;
		height:30px;
		text-transform:uppercase;
		font-weight:bold;
		font-family:arial;
		display:flex;
		align-items:center;
		justify-content:center;
	}
	.d6{
		width:100%;
		height:200px;
		border:none;
		display:flex;
		margin-top:0px;
		align-items:center;
	}
	.input{
		text-align:center;
		font-weight:bold;
		font-family:arial;
		width:242.5px;
		height:25px;
		border-left:none;
		border-right:none;
		border-top:none;
		background-color:#f5fafa;
	}
	.button{
		width:100px;
		height:30px;
		margin-left:70px;
		border-radius:100px;
	}
	.button2{
		width:60px;
		background-image:url("data:image/jpeg;base64,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");
		
		background-repeat:no-repeat;
		background-size:cover;
		mix-blend-mode: multiply;
		 mix-blend-mode: white;;
		border:none;
		height:55px;
		margin-top:2px;
		background-color:white;
	}
	.ip1{
		height:20px;
	
	}
	.d8{
		width:100%;
		margin-top:36px;
		border:none;
		text-align:center;
	}
	.d9{
		height:50px;
		width:30%;
		border:none;
			
	}
	.but1{
		border:none;
		font-weight:bold;
		font-family:arial;
		font-size:20px;
	}
</style>
</head>
<body>
	<div class = "d1">
		<ul>
			<li><a href = "customerhome.html">Home</a></li>
			<li>
				<select name = "links" class = "se" size = "1" onchange = "window.location.href=this.value;">
					<option  value="hidden">Information</option>
					<option value="customerViewInformation.jsp">View Information</option>
					<option value="updateCustomer.jsp">Update Information</option>
				</select> 
			</li>
			<li>
				<select name = "links" class = "se" size = "1" onchange = "window.location.href=this.value;">
					<option  >User</option>
					<option value="ElectricityPayBill.jsp">Pay Bill</option>
					<option value="viewPaymentDetails.jsp">View Payment Details</option>
				</select> 
			</li>
					<li><form action = "viewPaymentDetails" method = "post"><button class="but1" >ViewMaymentDetails</button></form></li>
			<li>Report</li>
			<li class = "sc" style = "list-style-type:none;">
				<select name = "links" class = "se" size = "1" onchange = "window.location.href=this.value;">
					<option  value="hidden">Utility</option>
					<option value="https://www.google.com/">Google</option>
					<option value="adminLogin.html">Youtube</option>
					<option  value="https://in.search.yahoo.com/?fr2=inr">Yahoo</option>
					<option  value="https://onlinenotepad.org/notepad">NotePad</option>
				</select> 	
			</li>			
			<li class = "li" style = "margin-left:70.5px;"><form action = "logoutcustomer" method = "post"><button class = "btt1">Logout</button></form></li>
		</ul>
	</div>
	<div class = "d2">
		<div class = "d3">
			<div class = "d4">
			
			</div>
			<div class = "d5">
				View customer information
			</div>
			<div class = "d8">
					<form action = "view" method = "post">
						<input class = "input" style = "margin-top:0px;" type = "number" name = "mitterno" placeholder = "Enter Mitterno">
						<br>
						<button class = "button2"> </button>
					</form>
			</div>
			<div class = "d6">
				
				<div class = "d7">
					<%Integer mitterno = (Integer)request.getAttribute("List11"); %>
					<%String name = (String)request.getAttribute("List"); %>
					<%String email = (String)request.getAttribute("List2"); %>
					<%String password = (String)request.getAttribute("List3"); %>
					<%String billtype = (String)request.getAttribute("List4"); %>
					<%String city = (String)request.getAttribute("List5"); %>
					<%String state = (String)request.getAttribute("List6"); %>
					<%String mitterloc = (String)request.getAttribute("List7"); %>
					<%String mittertype = (String)request.getAttribute("List8"); %>
					<%Integer phasecode = (Integer)request.getAttribute("List9"); %>
					<%Long phone = (Long)request.getAttribute("List10"); %>
					<input class = "input" value = <%=mitterno %>>
					<input class = "input" value = <%=name %>>
					<input class = "input" value = <%=email %>><br><br>
					<input class = "input" value = <%=password %>>
					<input class = "input" value = <%=billtype %>>
					<input class = "input" value = <%=city %>><br><br>
					<input class = "input" value = <%=state %>>
					<input class = "input" value = <%=mitterloc %>>
					<input class = "input" value = <%=mittertype %>><br><br>
					<input class = "input" value = <%=phasecode %>>
					<input class = "input" value = <%=phone %>>
					<button class = "button"><a href = "customerhome.html">Back</a></button>
				</div>
				
			</div>
		</div>
	</div>
</body>
</html>