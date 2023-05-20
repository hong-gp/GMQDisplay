<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<html lang="ko">
<body>
<%
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("sid");

	String[] recom = request.getParameterValues("recom");
	String str_recom = "";
	if (recom != null)
		str_recom = recom[0];

	String[] valueArray = request.getParameterValues("genre");
	if (valueArray != null)
		str_recom = recom[0];
	String value = "";

	String[] sizeArray = request.getParameterValues("size");
	if (recom != null)
		str_recom = recom[0];
	String size = "";

	String[] resolutionArray = request.getParameterValues("resolution");
	if (recom != null)
		str_recom = recom[0];
	String resolution = "";

	String[] ratioArray = request.getParameterValues("ratio");
	if (recom != null)
		str_recom = recom[0];
	String ratio = "";

	String[] hzArray = request.getParameterValues("hz");
	if (recom != null)
		str_recom = recom[0];
	String hz = "";

	String[] typeArray = request.getParameterValues("type");
	if (recom != null)
		str_recom = recom[0];
	String type = "";

	String sort = request.getParameter("sort");
	
  Connection con = null;
  PreparedStatement stmt = null;
  ResultSet rs = null;
	try {
		for (int i = 0; i < valueArray.length; i++) {
			value += valueArray[i] + "/";
		}
		for (int i = 0; i < sizeArray.length; i++) {
			size += sizeArray[i] + "/";
		}
		for (int i = 0; i < resolutionArray.length; i++) {
			resolution += resolutionArray[i] + "/";
		}
		String[] pathArr = value.split("/");
		String[] sizeArr = size.split("/");
		String[] resolutionArr = resolution.split("/");

		for (int i = 0; i < ratioArray.length; i++) {
			ratio += ratioArray[i] + "/";
		}
		String[] ratioArr = ratio.split("/");

		for (int i = 0; i < hzArray.length; i++) {
			hz += hzArray[i] + "/";
		}
		String[] hzArr = hz.split("/");

		for (int i = 0; i < typeArray.length; i++) {
			if (typeArray[i].equals("flat"))
				 typeArray[i] = "평면";
			else if (typeArray[i].equals("curve"))
				 typeArray[i] = "커브드";

			type += typeArray[i] + "/";
		}
		String[] typeArr = type.split("/");

    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost:3306/gpqd";
    String username = "root";
    String password = "1234";
    con = DriverManager.getConnection(url, username, password);

	String query = "SELECT * FROM product";

	// 장르
	if (pathArr.length > 0) {
		query += " WHERE ( Mgenre LIKE ?";
		for (int i = 1; i < pathArr.length; i++) {
			query += " OR Mgenre LIKE ?";
		}
		query += ")";
		// 장르 / 사이즈
		if (sizeArr.length > 0) {
			query += " AND ( Msize LIKE ?";
			for (int i = 1; i < sizeArr.length; i++) {
				query += " OR Msize LIKE ?";
			}
			query += ")";
			// 장르 / 사이즈 / 해상도
			if (resolutionArr.length > 0) {
				query += " AND ( Mresolution LIKE ?";
				for (int i = 1; i < resolutionArr.length; i++) {
					query += " OR Mresolution LIKE ?";
				}
				query += ")";
				// 장르 / 사이즈 / 해상도 / 비율
				if (ratioArr.length > 0) {
					query += " AND ( Mratio LIKE ?";
					for (int i = 1; i < ratioArr.length; i++) {
						query += " OR Mratio LIKE ?";
					}
					query += ")";
					// 장르 / 사이즈 / 해상도 / 비율 / 주사율
					if (hzArr.length > 0) {
						query += " AND ( Minjection LIKE ?";
						for (int i = 1; i < hzArr.length; i++) {
							query += " OR Minjection LIKE ?";
						}
						query += ")";
						// 장르 / 사이즈 / 해상도 / 비율 / 주사율 / 패널형태
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					} else {
						// 장르 / 사이즈 / 해상도 / 비율 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					}
				} else {
					// 장르 / 사이즈 / 해상도 / 주사율
					if (hzArr.length > 0) {
						query += " AND ( Minjection LIKE ?";
						for (int i = 1; i < hzArr.length; i++) {
							query += " OR Minjection LIKE ?";
						}
						query += ")";
						// 장르 / 사이즈 / 해상도 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					} else {
						// 장르 / 사이즈 / 해상도 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					}
				}
			} else {
				// 장르 / 사이즈 / 비율
				if (ratioArr.length > 0) {
					query += " AND ( Mratio LIKE ?";
					for (int i = 1; i < ratioArr.length; i++) {
						query += " OR Mratio LIKE ?";
					}
					query += ")";
					// 장르 / 사이즈 / 비율 / 주사율
					if (hzArr.length > 0) {
						query += " AND ( Minjection LIKE ?";
						for (int i = 1; i < hzArr.length; i++) {
							query += " OR Minjection LIKE ?";
						}
						query += ")";
						// 장르 / 사이즈 / 비율 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					} else {
						// 장르 / 사이즈 / 비율 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					}
				} else {
					// 장르 / 사이즈 / 주사율
					if (hzArr.length > 0) {
						query += " AND ( Minjection LIKE ?";
						for (int i = 1; i < hzArr.length; i++) {
							query += " OR Minjection LIKE ?";
						}
						query += ")";
						// 장르 / 사이즈 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					} else {
						// 장르 / 사이즈 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					}
				}
			}
		} else {
			// 장르 / 해상도
			if (resolutionArr.length > 0) {
				query += " AND ( Mresolution LIKE ?";
				for (int i = 1; i < resolutionArr.length; i++) {
					query += " OR Mresolution LIKE ?";
				}
				query += ")";
				// 장르 / 해상도 / 비율
				if (ratioArr.length > 0) {
					query += " AND ( Mratio LIKE ?";
					for (int i = 1; i < ratioArr.length; i++) {
						query += " OR Mratio LIKE ?";
					}
					query += ")";
					// 장르 / 해상도 / 비율 / 주사율
					if (hzArr.length > 0) {
						query += " AND ( Minjection LIKE ?";
						for (int i = 1; i < hzArr.length; i++) {
							query += " OR Minjection LIKE ?";
						}
						query += ")";
						// 장르 / 해상도 / 비율 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					} else {
						// 장르 / 해상도 / 비율 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					}
				} else {
					// 장르 / 해상도 / 주사율
					if (hzArr.length > 0) {
						query += " AND ( Minjection LIKE ?";
						for (int i = 1; i < hzArr.length; i++) {
							query += " OR Minjection LIKE ?";
						}
						query += ")";
						// 장르 / 해상도 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					} else {
						// 장르 / 해상도 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					}
				}
			} else {
				// 장르 / 비율
				if (ratioArr.length > 0) {
					query += " AND ( Mratio LIKE ?";
					for (int i = 1; i < ratioArr.length; i++) {
						query += " OR Mratio LIKE ?";
					}
					query += ")";
					// 장르 / 비율 / 주사율
					if (hzArr.length > 0) {
						query += " AND ( Minjection LIKE ?";
						for (int i = 1; i < hzArr.length; i++) {
							query += " OR Minjection LIKE ?";
						}
						query += ")";
						// 장르 / 비율 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					} else {
						// 장르 / 비율 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					}
				} else {
					// 장르 / 주사율
					if (hzArr.length > 0) {
						query += " AND ( Minjection LIKE ?";
						for (int i = 1; i < hzArr.length; i++) {
							query += " OR Minjection LIKE ?";
						}
						query += ")";
						// 장르 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					} else {
						// 장르 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					}
				}
			}
		}
///////////////////////////////////////////////////////////////////////////
	} else {
		// 사이즈
		if (sizeArr.length > 0) {
			query += " WHERE (Msize LIKE ?";
			for (int i = 1; i < sizeArr.length; i++) {
				query += " OR Msize LIKE ?";
			}
			query += ")";
			// 사이즈 / 해상도
			if (resolutionArr.length > 0) {
				query += " AND ( Mresolution LIKE ?";
				for (int i = 1; i < resolutionArr.length; i++) {
					query += " OR Mresolution LIKE ?";
				}
				query += ")";
				// 사이즈 / 해상도 / 비율
				if (ratioArr.length > 0) {
					query += " AND ( Mratio LIKE ?";
					for (int i = 1; i < ratioArr.length; i++) {
						query += " OR Mratio LIKE ?";
					}
					query += ")";
					// 사이즈 / 해상도 / 비율 / 주사율
					if (hzArr.length > 0) {
						query += " AND ( Minjection LIKE ?";
						for (int i = 1; i < hzArr.length; i++) {
							query += " OR Minjection LIKE ?";
						}
						query += ")";
						// 사이즈 / 해상도 / 비율 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					} else {
						// 사이즈 / 해상도 / 비율 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					}
				} else {
					// 사이즈 / 해상도 / 주사율
					if (hzArr.length > 0) {
						query += " AND ( Minjection LIKE ?";
						for (int i = 1; i < hzArr.length; i++) {
							query += " OR Minjection LIKE ?";
						}
						query += ")";
						// 사이즈 / 해상도 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					} else {
						// 사이즈 / 해상도 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					}
				}
			} else {
				// 사이즈 / 비율
				if (ratioArr.length > 0) {
					query += " AND ( Mratio LIKE ?";
					for (int i = 1; i < ratioArr.length; i++) {
						query += " OR Mratio LIKE ?";
					}
					query += ")";
					// 사이즈 / 비율 / 주사율
					if (hzArr.length > 0) {
						query += " AND ( Minjection LIKE ?";
						for (int i = 1; i < hzArr.length; i++) {
							query += " OR Minjection LIKE ?";
						}
						query += ")";
						// 사이즈 / 비율 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					} else {
						// 사이즈 / 비율 /패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					}
				} else {
					// 사이즈 / 주사율
					if (hzArr.length > 0) {
						query += " AND ( Minjection LIKE ?";
						for (int i = 1; i < hzArr.length; i++) {
							query += " OR Minjection LIKE ?";
						}
						query += ")";
						// 사이즈 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					} else {
						// 사이즈 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					}
				}
			}
		} else {
			// 해상도
			if (resolutionArr.length > 0) {
				query += " WHERE ( Mresolution LIKE ?";
				for (int i = 1; i < resolutionArr.length; i++) {
					query += " OR Mresolution LIKE ?";
				}
				query += ")";
				// 해상도 / 비율
				if (ratioArr.length > 0) {
					query += " AND ( Mratio LIKE ?";
					for (int i = 1; i < ratioArr.length; i++) {
						query += " OR Mratio LIKE ?";
					}
					query += ")";
					// 해상도 / 비율 / 주사율
					if (hzArr.length > 0) {
						query += " AND ( Minjection LIKE ?";
						for (int i = 1; i < hzArr.length; i++) {
							query += " OR Minjection LIKE ?";
						}
						query += ")";
						// 해상도 / 비율 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					} else {
						// 해상도 / 비율 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					}
				} else {
					// 해상도 / 주사율
					if (hzArr.length > 0) {
						query += " AND ( Minjection LIKE ?";
						for (int i = 1; i < hzArr.length; i++) {
							query += " OR Minjection LIKE ?";
						}
						query += ")";
						// 해상도 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					} else {
						// 해상도 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					}
				}
			} else {
				// 비율
				if (ratioArr.length > 0) {
					query += " WHERE ( Mratio LIKE ?";
					for (int i = 1; i < ratioArr.length; i++) {
						query += " OR Mratio LIKE ?";
					}
					query += ")";
					// 비율 / 주사율
					if (hzArr.length > 0) {
						query += " AND ( Minjection LIKE ?";
						for (int i = 1; i < hzArr.length; i++) {
							query += " OR Minjection LIKE ?";
						}
						query += ")";
						// 비율 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					} else {
						// 비율 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					}
				} else {
					// 주사율
					if (hzArr.length > 0) {
						query += " WHERE ( Minjection LIKE ?";
						for (int i = 1; i < hzArr.length; i++) {
							query += " OR Minjection LIKE ?";
						}
						query += ")";
						// 주사율 / 패널타입
						if (typeArr.length > 0) {
							query += " AND ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					} else {
						// 패널타입
						if (typeArr.length > 0) {
							query += " WHERE ( Mform LIKE ?";
							for (int i = 1; i < typeArr.length; i++) {
								query += " OR Mform LIKE ?";
							}
							query += ")";
						}
					}
				}
			}
		}
	}

	if (str_recom.equals("recom")) {
		if(pathArr.length > 0 || sizeArr.length > 0 || resolutionArr.length > 0 || ratioArr.length > 0 || hzArr.length > 0 || typeArr.length > 0) {
			query += " AND ( Mno = 'EX2710S' OR Mno = '32UN650' OR Mno = 'S27AG300' OR Mno = 'G32C4X' OR Mno = 'G241VE2' OR Mno = 'XL2411K' OR Mno = 'TFG27Q14P' OR Mno = 'U3419W')";
		} else {
			query += " WHERE ( Mno = 'EX2710S' OR Mno = '32UN650' OR Mno = 'S27AG300' OR Mno = 'G32C4X' OR Mno = 'G241VE2' OR Mno = 'XL2411K' OR Mno = 'TFG27Q14P' OR Mno = 'U3419W')";
		}
	}

	if (sort.equals("launch")) {
		query += " ORDER BY Mlaunch DESC";
	} else if (sort.equals("popularity")) {
		query += " ORDER BY Morder DESC";
	} else if (sort.equals("expensive")) {
		query += " ORDER BY Mprice DESC";
	} else if (sort.equals("cheap")) {
		query += " ORDER BY Mprice ASC";
	}
	
	stmt = con.prepareStatement(query);

	// 장르
	if (pathArr.length > 0) {
		for (int i = 0; i < pathArr.length; i++) {
			stmt.setString(i+1, pathArr[i] + "%");
		}
		// 장르 / 사이즈
		if (sizeArr.length > 0) {
			for (int i = 0; i < sizeArr.length; i++) {
				stmt.setString(i+1+pathArr.length, sizeArr[i] + "%");
			}
			// 장르 / 사이즈 / 해상도
			if (resolutionArr.length > 0) {
				for (int i = 0; i < resolutionArr.length; i++) {
					stmt.setString(i+1+pathArr.length+sizeArr.length, "%" + resolutionArr[i] + "%");
				}
				// 장르 / 사이즈 / 해상도 / 비율
				if (ratioArr.length > 0) {
					for (int i = 0; i < ratioArr.length; i++) {
						stmt.setString(i + 1 + pathArr.length + sizeArr.length + resolutionArr.length, "%" + ratioArr[i] + "%");
					}
					// 장르 / 사이즈 / 해상도 / 비율 / 주사율
					if (hzArr.length > 0) {
						for (int i = 0; i < hzArr.length; i++) {
							stmt.setString(i + 1 + pathArr.length + sizeArr.length + resolutionArr.length + ratioArr.length, hzArr[i] + "%");
						}
						// 장르 / 사이즈 / 해상도 / 비율 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + pathArr.length + sizeArr.length + resolutionArr.length + ratioArr.length + hzArr.length, typeArr[i] + "%");
							}
						}
					} else {
						// 장르 / 사이즈 / 해상도 / 비율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + pathArr.length + sizeArr.length + resolutionArr.length + ratioArr.length, typeArr[i] + "%");
							}
						}
					}
				} else {
					// 장르 / 사이즈 / 해상도 / 주사율
					if (hzArr.length > 0) {
						for (int i = 0; i < hzArr.length; i++) {
							stmt.setString(i + 1 + pathArr.length + sizeArr.length + resolutionArr.length, hzArr[i] + "%");
						}
						// 장르 / 사이즈 / 해상도 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + pathArr.length + sizeArr.length + resolutionArr.length + hzArr.length, typeArr[i] + "%");
							}
						}
					} else {
						// 장르 / 사이즈 / 해상도 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + pathArr.length + sizeArr.length + resolutionArr.length, typeArr[i] + "%");
							}
						}
					}
				}
			} else {
				// 장르 / 사이즈 / 비율
				if (ratioArr.length > 0) {
					for (int i = 0; i < ratioArr.length; i++) {
						stmt.setString(i+1+pathArr.length+sizeArr.length, "%" + ratioArr[i] + "%");
					}
					// 장르 / 사이즈 / 비율 / 주사율
					if (hzArr.length > 0) {
						for (int i = 0; i < hzArr.length; i++) {
							stmt.setString(i + 1 + pathArr.length + sizeArr.length + ratioArr.length, hzArr[i] + "%");
						}
						// 장르 / 사이즈 / 비율 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + pathArr.length + sizeArr.length + ratioArr.length + hzArr.length, typeArr[i] + "%");
							}
						}
					} else {
						// 장르 / 사이즈 / 비율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + pathArr.length + sizeArr.length + ratioArr.length, typeArr[i] + "%");
							}
						}
					}
				} else {
					// 장르 / 사이즈 / 주사율
					if (hzArr.length > 0) {
						for (int i = 0; i < hzArr.length; i++) {
							stmt.setString(i + 1 + pathArr.length + sizeArr.length + resolutionArr.length + ratioArr.length, hzArr[i] + "%");
						}
						// 장르 / 사이즈 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + pathArr.length + sizeArr.length + hzArr.length, typeArr[i] + "%");
							}
						}
					} else {
						// 장르 / 사이즈 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + pathArr.length + sizeArr.length, typeArr[i] + "%");
							}
						}
					}
				}
			}
		} else {
			// 장르 / 해상도
			if (resolutionArr.length > 0) {
				for (int i = 0; i < resolutionArr.length; i++) {
					stmt.setString(i+1+pathArr.length, "%" + resolutionArr[i] + "%");
				}
				// 장르 / 해상도 / 비율
				if (ratioArr.length > 0) {
					for (int i = 0; i < ratioArr.length; i++) {
						stmt.setString(i+1+pathArr.length+resolutionArr.length, "%" + ratioArr[i] + "%");
					}
					// 장르 / 해상도 / 비율 / 주사율
					if (hzArr.length > 0) {
						for (int i = 0; i < hzArr.length; i++) {
							stmt.setString(i + 1 + pathArr.length + resolutionArr.length + ratioArr.length, hzArr[i] + "%");
						}
						// 장르 / 해상도 / 비율 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + pathArr.length + resolutionArr.length + ratioArr.length + hzArr.length, typeArr[i] + "%");
							}
						}
					}
					else {
						// 장르 / 해상도 / 비율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + pathArr.length + resolutionArr.length + ratioArr.length, typeArr[i] + "%");
							}
						}
					}
				} else {
					// 장르 / 비율 / 주사율
					if (hzArr.length > 0) {
						for (int i = 0; i < hzArr.length; i++) {
							stmt.setString(i + 1 + pathArr.length + ratioArr.length, hzArr[i] + "%");
						}
						// 장르 / 비율 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + pathArr.length + ratioArr.length + hzArr.length, typeArr[i] + "%");
							}
						}
					} else {
						// 장르 / 비율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + pathArr.length + ratioArr.length, typeArr[i] + "%");
							}
						}
					}
				}
			} else {
				// 장르 / 비율
				if (ratioArr.length > 0) {
					for (int i = 0; i < ratioArr.length; i++) {
						stmt.setString(i+1+pathArr.length, "%" + ratioArr[i] + "%");
					}
					// 장르 / 비율 / 주사율
					if (hzArr.length > 0) {
						for (int i = 0; i < hzArr.length; i++) {
							stmt.setString(i + 1 + pathArr.length + ratioArr.length, hzArr[i] + "%");
						}
						// 장르 / 비율 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + pathArr.length + ratioArr.length + hzArr.length, typeArr[i] + "%");
							}
						}
					} else {
						// 장르 / 비율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + pathArr.length + ratioArr.length, typeArr[i] + "%");
							}
						}
					}
				} else {
					// 장르 / 주사율
					if (hzArr.length > 0) {
						for (int i = 0; i < hzArr.length; i++) {
							stmt.setString(i + 1 + pathArr.length, hzArr[i] + "%");
						}
						// 장르 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + pathArr.length + hzArr.length, typeArr[i] + "%");
							}
						}
					} else {
						// 장르 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + pathArr.length, typeArr[i] + "%");
							}
						}
					}
				}
			}
		}
////////////////////////////////////////////////////////////////////////////////
	} else {
		// 사이즈
		if (sizeArr.length > 0) {
			for (int i = 0; i < sizeArr.length; i++) {
				stmt.setString(i+1, sizeArr[i] + "%");
			}
			// 사이즈 / 해상도
			if (resolutionArr.length > 0) {
				for (int i = 0; i < resolutionArr.length; i++) {
					stmt.setString(i+1+sizeArr.length, "%" + resolutionArr[i] + "%");
				}
				// 사이즈 / 해상도 / 비율
				if (ratioArr.length > 0) {
					for (int i = 0; i < ratioArr.length; i++) {
						stmt.setString(i+1+sizeArr.length+resolutionArr.length, "%" + ratioArr[i] + "%");
					}
					// 사이즈 / 해상도 / 비율 / 주사율
					if (hzArr.length > 0) {
						for (int i = 0; i < hzArr.length; i++) {
							stmt.setString(i + 1 + sizeArr.length + resolutionArr.length + ratioArr.length,  hzArr[i] + "%");
						}
						// 사이즈 / 해상도 / 비율 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + sizeArr.length + resolutionArr.length + ratioArr.length + hzArr.length, typeArr[i] + "%");
							}
						}
					} else {
						// 사이즈 / 해상도 / 비율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + sizeArr.length + resolutionArr.length + ratioArr.length, typeArr[i] + "%");
							}
						}
					}
				} else {
					// 사이즈 / 해상도 / 주사율
					if (hzArr.length > 0) {
						for (int i = 0; i < hzArr.length; i++) {
							stmt.setString(i + 1 + sizeArr.length + resolutionArr.length, hzArr[i] + "%");
						}
						// 사이즈 / 해상도 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + sizeArr.length + resolutionArr.length + hzArr.length, typeArr[i] + "%");
							}
						}
					} else {
						// 사이즈 / 해상도 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + sizeArr.length + resolutionArr.length, typeArr[i] + "%");
							}
						}
					}
				}
			} else {
				// 사이즈 / 비율
				if (ratioArr.length > 0) {
					for (int i = 0; i < ratioArr.length; i++) {
						stmt.setString(i + 1 + sizeArr.length, "%" + ratioArr[i] + "%");
					}
					// 사이즈 / 비율 / 주사율
					if (hzArr.length > 0) {
						for (int i = 0; i < hzArr.length; i++) {
							stmt.setString(i + 1 + sizeArr.length + ratioArr.length, hzArr[i] + "%");
						}
						// 사이즈 / 비율 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + sizeArr.length + ratioArr.length + hzArr.length, typeArr[i] + "%");
							}
						}
					} else {
						// 사이즈 / 비율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + sizeArr.length + ratioArr.length , typeArr[i] + "%");
							}
						}
					}
				} else {
					// 사이즈 / 주사율
					if (hzArr.length > 0) {
						for (int i = 0; i < hzArr.length; i++) {
							stmt.setString(i + 1 + sizeArr.length, hzArr[i] + "%");
						}
						// 사이즈 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + sizeArr.length + hzArr.length, typeArr[i] + "%");
							}
						}
					} else {
						// 사이즈 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + sizeArr.length, typeArr[i] + "%");
							}
						}
					}
				} 
			}
		} else {
			// 해상도
			if (resolutionArr.length > 0) {
				for (int i = 0; i < resolutionArr.length; i++) {
					stmt.setString(i+1, "%" + resolutionArr[i] + "%");
				}
				// 해상도 / 비율
				if (ratioArr.length > 0) {
					for (int i = 0; i < ratioArr.length; i++) {
						stmt.setString(i + 1 + resolutionArr.length, "%" + ratioArr[i] + "%");
					}
					// 해상도 / 비율 / 주사율
					if (hzArr.length > 0) {
						for (int i = 0; i < hzArr.length; i++) {
							stmt.setString(i + 1 + resolutionArr.length + ratioArr.length, hzArr[i] + "%");
						}
						// 해상도 / 비율 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + resolutionArr.length + ratioArr.length + hzArr.length, typeArr[i] + "%");
							}
						}
					} else {
						// 해상도 / 비율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + resolutionArr.length + ratioArr.length, typeArr[i] + "%");
							}
						}
					}
				} else {
					// 해상도 / 주사율
					if (hzArr.length > 0) {
						for (int i = 0; i < hzArr.length; i++) {
							stmt.setString(i + 1 + resolutionArr.length, hzArr[i] + "%");
						}
						// 해상도 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + resolutionArr.length + hzArr.length, typeArr[i] + "%");
							}
						}
					} else {
						// 해상도 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + resolutionArr.length, typeArr[i] + "%");
							}
						}
					}
				}
			} else {
				// 비율
				if (ratioArr.length > 0) {
					for (int i = 0; i < ratioArr.length; i++) {
						stmt.setString(i + 1, "%" + ratioArr[i] + "%");
					}
					// 비율 / 주사율
					if (hzArr.length > 0) {
						for (int i = 0; i < hzArr.length; i++) {
							stmt.setString(i + 1 + ratioArr.length, hzArr[i] + "%");
						}
						// 비율 / 주사율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + ratioArr.length + hzArr.length, typeArr[i] + "%");
							}
						}
					} else {
						// 비율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + ratioArr.length, typeArr[i] + "%");
							}
						}
					}
				} else {
					// 주사율
					if (hzArr.length > 0) {
						for (int i = 0; i < hzArr.length; i++) {
							stmt.setString(i + 1, hzArr[i] + "%");
						}
						// 주사율 / 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1 + hzArr.length, typeArr[i] + "%");
							}
						}
					} else {
						// 패널타입
						if (typeArr.length > 0) {
							for (int i = 0; i < typeArr.length; i++) {
								stmt.setString(i + 1, typeArr[i] + "%");
							}
						}
					}
				}
			}
		}
	}
	
    rs = stmt.executeQuery();
	int num = 0;
	DecimalFormat df = new DecimalFormat("###,###");
		if (!rs.next()) {
%>
			<li class="empty-box" style="width:100%">
				<div class="empty-line">
					<span class="no-content">판매 가능한 상품이 없습니다.</span>
				</div>
			</li>
<%
		} else {
			do {
			try {
			// 리뷰 평점, 개수
			String sql_review = "SELECT * FROM review WHERE Mno=?";
			PreparedStatement pstmt_review = con.prepareStatement(sql_review);
			pstmt_review.setString(1, rs.getString("Mno"));

			ResultSet rs_review = pstmt_review.executeQuery();

			int total = 0;
			int cnt = 0;
			double rating = 0;

			while(rs_review.next()) {
			total += rs_review.getInt("review_rating");
			cnt++;
			}
			if (cnt == 0)
				rating = 0;
			else
				
			rating = (double)total / cnt;
			DecimalFormat df_rating = new DecimalFormat("#.#");
			String format_rating = df_rating.format(rating);
			num++;

			String genreStr = "";

			if (rs.getString("Mgenre").equals("fps") || rs.getString("Mgenre").equals("rts"))
				genreStr = "fps/rts";
			else if (rs.getString("Mgenre").equals("rpg") || rs.getString("Mgenre").equals("sports") || rs.getString("Mgenre").equals("fighting"))
				genreStr = "rpg/sports/fighting";
			else if (rs.getString("Mgenre").equals("graphic"))
				genreStr = "graphic";
			else if (rs.getString("Mgenre").equals("work"))
				genreStr = "work";
			else if (rs.getString("Mgenre").equals("videogame"))
				genreStr = "videogame";

			String resolutionStr = "";

			if (rs.getString("Mresolution").equals("1920 x 1080(FHD)"))
				resolutionStr = "FHD";
			else if (rs.getString("Mresolution").equals("2560 x 1440(QHD)"))
				resolutionStr = "(QHD)";
			else if (rs.getString("Mresolution").equals("3840 x 2160(4K UHD)"))
				resolutionStr = "UHD";
			else if (rs.getString("Mresolution").equals("3440 x 1440(Ultra WQHD)"))
				resolutionStr = "WQHD";
			else if (rs.getString("Mresolution").equals("2560 x 2880(SDQHD)"))
				resolutionStr = "SDQHD";

			String ratioValue = "";

			if (rs.getString("Mratio").equals("와이드(16:9)"))
				ratioValue = "16:9";
			else if (rs.getString("Mratio").equals("울트라와이드(21:9)"))
				ratioValue = "21:9";
			else if (rs.getString("Mratio").equals("와이드(16:18)"))
				ratioValue = "16:18";

			String hzValue = "";

			if (rs.getString("Minjection").equals("60Hz") || rs.getString("Minjection").equals("75Hz"))
				hzValue = "60/75";
			else if (rs.getString("Minjection").equals("144Hz") || rs.getString("Minjection").equals("120Hz") || rs.getString("Minjection").equals("100Hz") )
				hzValue = "80/100/120/144";
			else if (rs.getString("Minjection").equals("165Hz") || rs.getString("Minjection").equals("170Hz"))
				hzValue = "165/170";
			else if (rs.getString("Minjection").equals("180Hz") || rs.getString("Minjection").equals("200Hz") || rs.getString("Minjection").equals("240Hz") || rs.getString("Minjection").equals("280Hz"))
				hzValue = "180/200/240/280";

			String typeValue = "";

			if (rs.getString("Mform").equals("평면"))
				typeValue = "flat";
			else if (rs.getString("Mform").equals("커브드"))
				typeValue = "curve";

			String genre_span = "";
			if (rs.getString("Mgenre").equals("fps"))
				genre_span = "FPS";
			else if (rs.getString("Mgenre").equals("rts"))
				genre_span = "RTS";
			else if (rs.getString("Mgenre").equals("rpg"))
				genre_span = "RPG";
			else if (rs.getString("Mgenre").equals("sports"))
				genre_span = "Sports";
			else if (rs.getString("Mgenre").equals("fighting"))
				genre_span = "Fights";
			else if (rs.getString("Mgenre").equals("graphic"))
				genre_span = "그래픽 작업용";
			else if (rs.getString("Mgenre").equals("work"))
				genre_span = "사운드 작업용";
			else if (rs.getString("Mgenre").equals("videogame"))
				genre_span = "비디오 게임용";
%>
<div class="genre" style="display: none;"><%=genreStr%></div>
<div class="size" style="display: none;"><%=rs.getString("Msize")%></div>
<div class="resolution" style="display: none;"><%=resolutionStr%></div>
<div class="ratio" style="display: none;"><%=ratioValue%></div>
<div class="hz" style="display: none;"><%=hzValue%></div>
<div class="type" style="display: none;"><%=typeValue%></div>

								<li class="item" id="li-prd-<%=rs.getString("Mno")%>">
									<form name="form<%=rs.getString("Mno")%>" id="form<%=rs.getString("Mno")%>" method="post">
										<input type="hidden" name="Mno" value="<%=rs.getString("Mno")%>" />
									</form>
									<div class="item-inner" data-omni="<%=rs.getString("Mno")%>|<%=rs.getString("Mno")%>">
										<div class="ins-badge-area-c1228"><span style="float:right"></span></div>
										<div class="ins-badge-area-c1236"><span style="float:right"></span></div>
										<div class="card-flag">
											<span><%=genre_span%></span>
											<%
											if (id != null) {
												String sql_wish = "SELECT * FROM wishlist WHERE userID=? AND Mno=?"; 
												PreparedStatement pstmt_wish = con.prepareStatement(sql_wish);
												pstmt_wish.setString(1, id);
												pstmt_wish.setString(2, rs.getString("Mno"));

												ResultSet rs_wish = pstmt_wish.executeQuery();
												if (rs_wish.next()) {
											%>
												<button title="" type="submit" class="btn-good on" form="form<%=rs.getString("Mno")%>" data-goods-id="<%=rs.getString("Mno")%>">
													<i class="icon ico-large ico-goods ico<%=rs.getString("Mno")%>">좋아요 선택</i>
												</button>
											<%
												} else {
											%>
												<button title="" type="submit" class="btn-good" form="form<%=rs.getString("Mno")%>" data-goods-id="<%=rs.getString("Mno")%>">
													<i class="icon ico-large ico-goods ico<%=rs.getString("Mno")%>">좋아요 미선택</i>
												</button>
											<%
												}
											} else {
											%>
												<button title="" type="button" class="btn-good" form="form<%=rs.getString("Mno")%>" data-goods-id="<%=rs.getString("Mno")%>" onClick="location.href='./login_info/login.html';">
													<i class="icon ico-large ico-goods ico<%=rs.getString("Mno")%>">좋아요 미선택</i>
												</button>
											<%
											}
											%>
											<div class="bookmarkTooltip flashTooltip bookmarkOn bookmarkOn<%=rs.getString("Mno")%>">
												<div>
													<p><span>찜</span>이 되었습니다.</p><a href="/GMQDisplay-master/mypage/mywishlist.jsp"
														class="btn-underline">전체보기</a>
												</div>
											</div>
											<div class="bookmarkTooltip flashTooltip bookmarkOff bookmarkOff<%=rs.getString("Mno")%>">
												<div>
													<p><span>찜</span>이 취소되었습니다.</p>
												</div>
											</div>
										</div> <!-- 마우스 오버시 이미지 순차교체  --><a
											href="./product/<%=rs.getString("Mno")%>.jsp"
											class="card-img"
											data-image-src="['//images.samsung.com/kdp/goods/2023/02/03/e2186039-ca36-4b0a-be72-97709b57a64a.png?$PF_PRD_PNG$', '//images.samsung.com/kdp/goods/2023/02/03/4b7e8b36-5ddb-4328-9693-9387d4fe6aa1.png?$PF_PRD_PNG$', '//images.samsung.com/kdp/goods/2023/02/03/420e46ce-c182-4e7f-9f29-0b3045c3ab5b.png?$PF_PRD_PNG$']">
											<img src="./static/images/product/<%=rs.getString("Mno")%>_1.png"
												alt="<%=rs.getString("Mname")%>"></a>
										<div class="card-opt">
											<div class="pf-color-sel">
												<div class="option-slick">
													<ol class="itm-color-list swiper-wrapper">
														<li class="swiper-slide"> <input type="radio"
																id="itm-color-1001-G000291183"
																name="itm-color-LS27BM502EK-SP" checked="checked"
																onclick="fnGetPfPrd('G000291183', 'li-prd-G000291183', 'itm-color-1001-G000291183')">
															<!-- <label for="itm-color-1001-G000291183"><span
																	class="itm-color-object opt-checked"
																	style="background-color:#000000;"
																	data-omni="color_BLACK|LS27BM502EK-SP|LS27BM502EK-SP">블랙</span></label> -->
														</li>
													</ol>
													<div class="slide-nav"> <button type="button"
															class="btn-prev">이전</button> <button type="button"
															class="btn-next">다음</button> </div>
												</div>
											</div>
										</div>
										<div class="card-option"></div>
										<div class="card-detail"> <span class="prd-name"
												title="<%=rs.getString("Mname")%>"><%=rs.getString("Mname")%></span> <span class="prd-num"><%=rs.getString("Mno")%></span> </div>
										<div class="card-price">
											<div class="list-price"> <span>기준가</span> <em><%=df.format(Integer.parseInt(rs.getString("Mprice")))%> 원</em> </div>
											<div class="price-detail"> <span class="coupon">혜택가</span>
												<div class="pic"> <em><%=df.format(Integer.parseInt(rs.getString("Msale")))%></em><span class="unit">원</span> <button
														type="button" class="btn-downtool" aria-hidden="true"><span
															class="blind">툴팁보기(레이어열림)</span></button> <!-- s : 툴팁 -->
													<div class="box-tip" aria-hidden="true">
														<ul>
															<li><span class="tit">기준가</span><span
																	class="price"><%=df.format(Integer.parseInt(rs.getString("Mprice")))%>원</span></li>
															<li class="total">
																<div class="coupon-price"><span
																		class="tit">혜택가</span><span
																		class="price"><%=df.format(Integer.parseInt(rs.getString("Msale")))%>원</span></div>
															</li>
														</ul>
													</div> <!-- e : 툴팁 -->
												</div>
											</div>
											<div class="point-detail"> <span class="expect">지원 예정 포인트</span> <span
													class="point"><%=(Integer.parseInt(rs.getString("Msale")))/100%>P</span> </div>
										</div>
										<div class="card-btn"> <!-- 200723 href 속성 삭제 --><a href="./product/<%=rs.getString("Mno")%>.jsp"><button
												type="button" class="btn btn-d btn-type2"
												onclick="netFunnel_Action_PF('./product/<%=rs.getString("Mno")%>.jsp');return false;"
												data-omni="">구매하기</button></a> </div>
										<div class="card-purchase">
											<ul class="message-list">
												<li class="message-list-item"><%=rs.getString("Msize")%></li>
												<li class="message-list-item"><%=rs.getString("Mresolution")%></li>
												<li class="message-list-item"><%=rs.getString("Minjection")%>의 주사율</li>
											</ul>
											<div class="compare">
											<a class="link-review" href="javascript:void(0);"
											title="상품평점"><%=format_rating%> (<%=cnt%>)</a> </div>
										</div>
									</div>
								</li>
<script>
	$('#form<%=rs.getString("Mno")%>').submit(function(event) {
		event.preventDefault();
		$.ajax({
			url: "./xhr/wishlist_insert.jsp",
			type: "POST",
			data: $('#form<%=rs.getString("Mno")%>').serialize(),
			success: function(data) {
				$('.btn-good[data-goods-id="<%=rs.getString("Mno")%>"]').toggleClass('on');
  
				if ($('.btn-good[data-goods-id="<%=rs.getString("Mno")%>"]').hasClass('on')) {
					$('.bookmarkOff<%=rs.getString("Mno")%>').css('display', 'none');
					$('.bookmarkOn<%=rs.getString("Mno")%>').css('display', 'block');
				} else {
					$('.bookmarkOn<%=rs.getString("Mno")%>').css('display', 'none');
					$('.bookmarkOff<%=rs.getString("Mno")%>').css('display', 'block');
				}

				var vTimer = setTimeout((function () {
					$('.bookmarkTooltip').fadeOut(300);
				}), 5000);

				$(document).click(function (e) {
					if ($btnGoods.has(e.target).length === 0) {
						clearTimeout(vTimer);
						$('.bookmarkOn').fadeOut(300);
						$('.bookmarkOff').fadeOut(300);
						btnclass.off();
					}
				});
			},
			error: function(jqXHR, textStatus, errorThrown) {
				console.log(errorThrown);
			}
		});
	});
</script>
<%
			} catch (Exception e) {
				out.print(e);
			}
		} while (rs.next());
}
  } catch (Exception e) {
    e.printStackTrace();
  }
%>
</body>
</html>