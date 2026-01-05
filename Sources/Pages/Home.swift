import Foundation
import Ignite


struct Home: StaticPage {
    var title = "Amelia – iOS developer"
    var cons = DataStorage().cons
    var projects = DataStorage().projects
    
    var body: some HTML {
        
        VStack (alignment: .center){
			
			//MARK: - Profile Header
            Grid {
                Column {
                	Image("/images/profile.jpg", description: "Amelia's Photo")
						.resizable()
						.frame(maxWidth: 320)
						.cornerRadius(30)
						.margin(.horizontal, 4)
						
                }
				.columnSpan(1)
				
                
                Column {
                	VStack (alignment: .leading) {
						Text("Amelia Shekikhacheva")
							.font(.title1)
							.fontWeight(.black)
						
						CodeBlock(.swift) {
					"""
					 struct AboutMe {
						 let role =  "iOS Developer"
						 var tech =  "Swift * UIKit * SwiftUI"
						 var city =  "Paris, France"
					 }
					"""
						}
						.frame(minWidth: 470)
						.cornerRadius(10)
						.margin(.top, 20)
						
						Spacer(size: 15)
						
						HStack(spacing: 6) {
							ForEach(cons) { con in
								
								LinkGroup(target: con.link) {
									Text(con.text)
										.fontWeight(.bold)
										.foregroundStyle(.white)
										.background(con.color)
										.padding(.horizontal, 10)
										.padding(.vertical, 5)
										.cornerRadius(10)
										.hoverEffect { effect in
											effect
												.background(.blue.opacity(0.3))
										}
								}
							}
						}
					}
                }
				.columnSpan(1)
            }
        }
		.margin(.bottom, 30)
		
		//MARK: - Description
		VStack (alignment: .center){
			HStack {
				Text(markdown: DataStorage().profileDescription)
					.font(.lead)
			}
//			.margin(.vertical, 50)
			.frame(maxWidth: 800)
		}
        
		
		//MARK: - Projects
        Text("Projects")
            .font(.title2)
            .fontWeight(.black)
            .frame(alignment: .center)
        
        VStack(alignment: .center) {
            ForEach(projects.reversed()) { project in
                
                HStack(alignment: .top) {
                    
                    Image(project.logoImage, description: project.title + "logo")
                        .resizable()
                        .frame(maxWidth: 100)
                        .cornerRadius(22)
                    
                    VStack (alignment: .leading) {
                      HStack {
                          Text(project.title)
                              .font(.title5)
                              .fontWeight(.bold)
                          
                          
                          LinkGroup(target: project.link) {
                              VStack(alignment: .leading) {
                                  Text ("Check out on GitHub ->")
                                      .fontWeight(.bold)
                                      .foregroundStyle(.white)
                                      .background(Color(hex: "#104C35"))
                                      .padding(.horizontal, 10)
                                      .padding(.vertical, 5)
                                      .cornerRadius(10)
                                      .hoverEffect { effect in
                                          effect
                                              .background(.blue.opacity(0.3))
                                      }
                              }
                          }
                      }

                        Spacer(size: 4)
                        
						Text(markdown: project.description)
                            .font(.body)
                            .opacity(0.7)
                        
                        Spacer(size: 6)
                        
                        HStack(spacing: 4) {
                            ForEach(project.stack) { item in
                                Text(item)
                                    .font(.small)
                                    .foregroundStyle(.white)
                                    .background(ColorManager.shared.color(for: item))
                                    .padding(.horizontal, 7)
                                    .padding(.vertical, 2)
                                    .cornerRadius(6)
                            }
                        }
                    }
                }
                .frame(maxWidth: 800)
                .padding(20)
                .background(Color.black.opacity(0.1))
                .cornerRadius(14)
                .border(.gray.opacity(0.15), width: 1)
                .shadow(Color.black.opacity(0.20), radius: 10)
                .margin(.vertical, 10)
            }
        }
    }
}
