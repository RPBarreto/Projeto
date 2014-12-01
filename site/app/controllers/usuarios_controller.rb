require 'digest'
class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]

  # GET /usuarios
  # GET /usuarios.json
  def index
    @usuarios = Usuario.all
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
  end

  # GET /usuarios/new
  def new
    @usuario = Usuario.new
  end

  # GET /usuarios/1/edit
  def edit
  end

  # POST /usuarios
  # POST /usuarios.json
  def create
    @usuario = Usuario.new(usuario_params)
    @usuario.password = Digest::MD5.hexdigest(@usuario.password)
  
    respond_to do |format|
      if @usuario.save
        session[:usuario] = @usuario
        session[:id] = @usuario.id
        format.html { redirect_to principal_path }
        format.json { render :show, status: :created, location: @usuario }
      else
        format.html { render :new }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuarios/1
  # PATCH/PUT /usuarios/1.json
  def update
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html { redirect_to @usuario, notice: 'Usuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario }
      else
        format.html { render :edit }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @usuario.destroy
    respond_to do |format|
      format.html { redirect_to usuarios_url, notice: 'Usuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params
      params.require(:usuario).permit(:nome, :username, :password, :email, :turma)
    end

  # class Wheel #roda roda roda maaaoooeee
  #   attr_accessor :letter_order, :letters, :enc_position
  #   def initialize(order)
  #     @letter_order = Array.new(51)
  #     @letters = Array.new(51)
  #     @enc_position=0

  #     i=0
  #     f=order.size
  #     while i < f do
  #       @letter_order[i] = cToNumber(order[i])
  #       @letters[i] = order[i]
  #       i +=1
  #     end
  #   end
  # end

  # $key_order = "abcdefghijklmnopqrstuvwxyz0123456789!\"$\'()+\\,-./?@ "

  # def cToNumber(c) #da agua para o vinho, do caractere para o numero
  #   v=-1
  #   v=$key_order.index(c)
  #   return v
  # end

  # def numberToChar(b) #same shit as above, but less alcohol
  #   a="*"
  #   a=$key_order[b]
  #   return a
  # end

  # $no_debug = 1

  # $wheel= Array.new
  # $wheel[0] = Wheel.new("bcagdefhilkjomnrqpu vstwzyx.94/3,20!\\?@81\"5'+$(6)-7")
  # $wheel[1] = Wheel.new("chtzwefdbyiqljuvskgaxorpnm\"6-(1$873,04 /.!25'\\+?)9@")
  # $wheel[2] = Wheel.new("x6pr8g7+2!n0$dw\\z?@4lhya5mo.v)9-,1 (3sqiu'etb\"jcfk/")
  # $wheel[3] = Wheel.new("j\"kbcefpl?/,v6gw(2!0o.5yamh1 -7r3s8x)9u$i+t\\z'qdn4@")

  # $total_wheels=4
  # $letter_order = Array.new(51);
  # $l=0
  # $letter_limit=51

  # def Encryptor(input) #transforma string em algo locão, funcionou no IRB.
  #   input = input.downcase #all is magic down there, don't mess with it, unless you want to turn into a frog
  #   a = cToNumber(input[0])
  #   b = cToNumber(input[-1,1])
  #   x=0
  #   c=0
  #   while x < input.size-1 do #soma o numero total das letras da string
  #     x+=1
  #     m =  cToNumber(input[x])
  #     c = c + m
  #   end
  #   enc_rolls = input[0] + $key_order[a] + $key_order[b] + input[-1,1] #chaves de criptografia dependendo da string passada, 
                                                                         #passa ao getinputs depois
    
  #   if (c % 2) == 0  #altera a ordem da string dependendo da soma do numero das letras
  #     input_text = input[0..-5] + input.reverse + input[0..-5]
  #   elsif (c % 3) ==0
  #     input_text = input[0..-5].reverse + input + input[0..-5].reverse    
  #   elsif (c % 5) == 0
  #     input_text = input[0..-5] + input + input[0..-5]
  #   else
  #     input_text = input[0..-5].reverse + input.reverse + input[0..-5].reverse
  #   end
  #   input_text = '%-33.33s' % input_text #completa ou corta a string para 32 caracteres
    
  #   getInputs(enc_rolls) #already explained


  #   $l = input_text.size
  #   c=""
    
  #   output_text=""
  #   i=0
    
  #   while i < $l-1 do #deixa o menos 1, ele é de sata, não funciona sem ele, ele é o escolhido, o profeta.

  #     c = input_text[i]
  #     letters_number = cToNumber(c)
  #     pos = letters_number + i #posição + i, o rly?

  #     if (letters_number==-1) 
  #       c='*'
  #     else 
  #       if !$no_debug
  #         info(2, "Char:"+c+",No:"+fill(letters_number)+"->") #string de informação, testing again.
  #       end
  #       k=$total_wheels-1
          
  #       while k >= 0 do
          
  #         pos = pos  + $wheel[k].enc_position #posição recebe ela mais a posição da roda atual
  #         while pos >= $letter_limit
  #           pos = pos - $letter_limit
  #         end
  #         if k > 0
  #           pos = $wheel[k].letter_order[pos]
  #         end
  #         if !$no_debug
  #           info(2, "|"+fill(pos)+"("+fill($wheel[k].enc_position)+"-"+$wheel[k].letters[pos]+") in W "+k)
  #         end
  #         k-=1

  #       end
        
  #       c = numberToChar($wheel[0].letter_order[pos])
  #       if !$no_debug
  #         info(0, "-> "+c)
  #       end
        
  #     end
  #     $wheel[0].enc_position += 1
        
  #     k=0
  #     while k<$total_wheels-1 do
  #       k+=1
  #       e = $wheel[k].enc_position
  #       if e > $letter_limit
  #         $wheel[k].enc_position=0
  #         p=k+1
  #         if p != $total_wheels
  #           o = p+1
  #           $wheel[p].enc_position += o
  #         end
  #       end
  #     end
  #     i+=1
      
  #     output_text = output_text + c
  #   end
  #   if !$no_debug
  #     info(0, "The Encrypted text is \"" +output_text+ "\"\n")
  #   end
  #   return output_text
  # end
          
  # def getInputs(input) #pega posições e gira as rodas para a posição.
  #   $wheel[0].enc_position = validate(input[0])
  #   $wheel[1].enc_position = validate(input[1])
  #   $wheel[2].enc_position = validate(input[2])
  #   $wheel[3].enc_position = validate(input[3])
  # end

  # def validate(n) #valida para ver se o numero letra esta dentro do limite de letras
  #   no = n.downcase
  #   no = cToNumber(no)
  #   if no > $letter_limit-1
  #     no = $letter_limit-1
  #   elsif no < 0
  #     no =0;
  #   end
    
  #   return no
  # end

  # def info(cls,text)  #metodo de informação, para fins de testes e trace, retirar mais tarde
  #   if cls==1
  #     txt.value = ""
  #   elsif cls ==0
  #     txt.value = txt.value + text + "\n"
  #   elsif cls ==2
  #     txt.value = txt.value + text
  #   end
  # end

  # def fill(no) #metodo para simplesmente inserir espaços, usado no junto do metodo acima
  #   if no<10
  #     no=no+" "
  #   end
  #   return no
  # end
end
