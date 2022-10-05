//
//  ContentView.swift
//  SampleSwiftUIApp
//
//  Created by Azizbek Ismailov on 04.10.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        ZStack {
            Image("background-3")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading, spacing: 16) {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Sign up")
                        .font(Font.largeTitle.bold())
                        .foregroundColor(.white)
                    Text("Access to 120+ hours of courses, tutorials and livestreams")
                        .font(Font.subheadline)
                        .foregroundColor(.white).opacity(0.7)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }

                HStack(spacing: 12.0) {
                    Image(systemName: "envelope.open.fill")
                        .foregroundColor(.white)
                    TextField("Email", text: $email)
                        .colorScheme(.dark)
                        .foregroundColor(Color.white.opacity(0.7))
                        .autocapitalization(.none)
                        .textContentType(.emailAddress)
                }
                .padding()
                .frame(height: 52)
                .overlay {
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.white, lineWidth: 1.0)
                        .blendMode(.overlay)
                }
                .background {
                    Color("secondaryBackground")
                        .cornerRadius(16.0)
                        .opacity(0.8)
                }

                HStack(spacing: 12.0) {
                    Image(systemName: "key.fill")
                        .foregroundColor(.white)
                    SecureField("Password", text: $password)
                        .colorScheme(.dark)
                        .foregroundColor(Color.white.opacity(0.7))
                        .autocapitalization(.none)
                        .textContentType(.password)
                }
                .padding()
                .frame(height: 52)
                .overlay {
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.white, lineWidth: 1.0)
                        .blendMode(.overlay)
                }
                .background {
                    Color("secondaryBackground")
                        .cornerRadius(16.0)
                        .opacity(0.8)
                }

                GradientButton()

                Text("By clicking on Sign up, you agree to our Terms of service and Privacy policy.")
                    .font(.footnote)
                    .foregroundColor(Color.white.opacity(0.7))

                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color.white.opacity(0.1))

                Button {
                    print("Switch to sign in")
                } label: {
                    HStack(spacing: 4) {

                        Text("Already have an account?")
                            .font(.footnote)
                            .foregroundColor(Color.white.opacity(0.7))

                        GradientText(text: "Sign in")
                            .font(.footnote.bold())



                    }
                }
            }
            .padding(20)
            .background {
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.white.opacity(0.2))
                    .background(Color("secondaryBackground").opacity(0.5))
                    .background(VisualEffectBlur(blurStyle: .systemMaterialDark))
                    .shadow(color: Color("shadowColor").opacity(0.5), radius: 60,x: 0, y: 30)
            }
            .cornerRadius(30)
            .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
