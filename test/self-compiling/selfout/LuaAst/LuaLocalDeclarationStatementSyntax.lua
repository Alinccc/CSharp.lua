-- Generated by CSharp.lua Compiler 1.1.0
--[[
Copyright 2017 YANG Huan (sy.yanghuan@gmail.com).

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
]]
local System = System
local CSharpLua
local CSharpLuaLuaAst
System.usingDeclare(function (global) 
  CSharpLua = global.CSharpLua
  CSharpLuaLuaAst = CSharpLua.LuaAst
end)
System.namespace("CSharpLua.LuaAst", function (namespace) 
  namespace.class("LuaLocalVariablesStatementSyntax", function (namespace) 
    local getLocalKeyword, Render, __init__, __ctor__
    __init__ = function (this) 
      this.Variables = CSharpLuaLuaAst.LuaSyntaxList_1(CSharpLuaLuaAst.LuaIdentifierNameSyntax)()
    end
    __ctor__ = function (this) 
      __init__(this)
      this.__base__.__ctor__(this)
    end
    getLocalKeyword = function (this) 
      return "local" --[[Keyword.Local]]
    end
    Render = function (this, renderer) 
      renderer:Render19(this)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaVariableDeclarationSyntax
        }
      end, 
      getLocalKeyword = getLocalKeyword, 
      Render = Render, 
      __ctor__ = __ctor__
    }
  end)

  namespace.class("LuaEqualsValueClauseListSyntax", function (namespace) 
    local getEqualsToken, Render, __init__, __ctor__
    __init__ = function (this) 
      this.Values = CSharpLuaLuaAst.LuaSyntaxList_1(CSharpLuaLuaAst.LuaExpressionSyntax)()
    end
    __ctor__ = function (this) 
      __init__(this)
      this.__base__.__ctor__(this)
    end
    getEqualsToken = function (this) 
      return "=" --[[Tokens.Equals]]
    end
    Render = function (this, renderer) 
      renderer:Render20(this)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaSyntaxNode
        }
      end, 
      getEqualsToken = getEqualsToken, 
      Render = Render, 
      __ctor__ = __ctor__
    }
  end)

  namespace.class("LuaLocalDeclarationStatementSyntax", function (namespace) 
    local Render, __ctor__
    __ctor__ = function (this, declaration) 
      this.__base__.__ctor__(this)
      this.Declaration = declaration
    end
    Render = function (this, renderer) 
      renderer:Render33(this)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaStatementSyntax
        }
      end, 
      Render = Render, 
      __ctor__ = __ctor__
    }
  end)

  namespace.class("LuaVariableDeclarationSyntax", function (namespace) 
    local __ctor__
    __ctor__ = function (this) 
      CSharpLuaLuaAst.LuaStatementSyntax.__ctor__(this)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaStatementSyntax
        }
      end, 
      __ctor__ = __ctor__
    }
  end)

  namespace.class("LuaVariableListDeclarationSyntax", function (namespace) 
    local Render, __init__, __ctor__
    __init__ = function (this) 
      this.Variables = CSharpLuaLuaAst.LuaSyntaxList_1(CSharpLuaLuaAst.LuaVariableDeclaratorSyntax)()
    end
    __ctor__ = function (this) 
      __init__(this)
      this.__base__.__ctor__(this)
    end
    Render = function (this, renderer) 
      renderer:Render34(this)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaVariableDeclarationSyntax
        }
      end, 
      Render = Render, 
      __ctor__ = __ctor__
    }
  end)

  namespace.class("LuaLocalVariableDeclaratorSyntax", function (namespace) 
    local Render, __ctor1__, __ctor2__
    __ctor1__ = function (this, declarator) 
      this.__base__.__ctor__(this)
      if declarator == nil then
        System.throw(CSharpLua.ArgumentNullException("declarator" --[[nameof(declarator)]]))
      end
      this.Declarator = declarator
    end
    __ctor2__ = function (this, identifier, expression) 
      this.__base__.__ctor__(this)
      this.Declarator = CSharpLuaLuaAst.LuaVariableDeclaratorSyntax(identifier, expression)
    end
    Render = function (this, renderer) 
      renderer:Render36(this)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaStatementSyntax
        }
      end, 
      Render = Render, 
      __ctor__ = {
        __ctor1__, 
        __ctor2__
      }
    }
  end)

  namespace.class("LuaVariableDeclaratorSyntax", function (namespace) 
    local getLocalKeyword, Render, __ctor__
    __ctor__ = function (this, identifier, expression) 
      this.__base__.__ctor__(this)
      if identifier == nil then
        System.throw(CSharpLua.ArgumentNullException("identifier" --[[nameof(identifier)]]))
      end
      this.Identifier = identifier
      if expression ~= nil then
        this.Initializer = CSharpLuaLuaAst.LuaEqualsValueClauseSyntax(expression)
      end
    end
    getLocalKeyword = function (this) 
      return "local" --[[Keyword.Local]]
    end
    Render = function (this, renderer) 
      renderer:Render35(this)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaStatementSyntax
        }
      end, 
      getLocalKeyword = getLocalKeyword, 
      Render = Render, 
      __ctor__ = __ctor__
    }
  end)

  namespace.class("LuaEqualsValueClauseSyntax", function (namespace) 
    local getEqualsToken, Render, __ctor__
    __ctor__ = function (this, value) 
      this.__base__.__ctor__(this)
      if value == nil then
        System.throw(CSharpLua.ArgumentNullException("value" --[[nameof(value)]]))
      end
      this.Value = value
    end
    getEqualsToken = function (this) 
      return "=" --[[Tokens.Equals]]
    end
    Render = function (this, renderer) 
      renderer:Render32(this)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaSyntaxNode
        }
      end, 
      getEqualsToken = getEqualsToken, 
      Render = Render, 
      __ctor__ = __ctor__
    }
  end)

  namespace.class("LuaLocalAreaSyntax", function (namespace) 
    local getLocalKeyword, Render, __init__, __ctor__
    __init__ = function (this) 
      this.Variables = CSharpLuaLuaAst.LuaSyntaxList_1(CSharpLuaLuaAst.LuaIdentifierNameSyntax)()
    end
    __ctor__ = function (this) 
      __init__(this)
      this.__base__.__ctor__(this)
    end
    getLocalKeyword = function (this) 
      return "local" --[[Keyword.Local]]
    end
    Render = function (this, renderer) 
      renderer:Render37(this)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaStatementSyntax
        }
      end, 
      getLocalKeyword = getLocalKeyword, 
      Render = Render, 
      __ctor__ = __ctor__
    }
  end)

  namespace.class("LuaLocalFunctionSyntx", function (namespace) 
    local getLocalKeyword, Render, __init__, __ctor__
    __init__ = function (this) 
      this.Comments = CSharpLuaLuaAst.LuaStatementListSyntax()
    end
    __ctor__ = function (this, identifierName, functionExpression, documentationComments) 
      __init__(this)
      this.__base__.__ctor__(this)
      this.IdentifierName = identifierName or System.throw(CSharpLua.ArgumentNullException("identifierName" --[[nameof(identifierName)]]))
      this.FunctionExpression = functionExpression or System.throw(CSharpLua.ArgumentNullException("functionExpression" --[[nameof(functionExpression)]]))
      if documentationComments ~= nil then
        this.Comments.Statements:AddRange(documentationComments)
      end
    end
    getLocalKeyword = function (this) 
      return "local" --[[Keyword.Local]]
    end
    Render = function (this, renderer) 
      renderer:Render38(this)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaStatementSyntax
        }
      end, 
      getLocalKeyword = getLocalKeyword, 
      Render = Render, 
      __ctor__ = __ctor__
    }
  end)

  namespace.class("LuatLocalTupleVariableExpression", function (namespace) 
    local getLocalKeyword, Render, __init__, __ctor__
    __init__ = function (this) 
      this.Variables = CSharpLuaLuaAst.LuaSyntaxList_1(CSharpLuaLuaAst.LuaIdentifierNameSyntax)()
    end
    __ctor__ = function (this) 
      __init__(this)
      this.__base__.__ctor__(this)
    end
    getLocalKeyword = function (this) 
      return "local" --[[Keyword.Local]]
    end
    Render = function (this, renderer) 
      renderer:Render39(this)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaExpressionSyntax
        }
      end, 
      getLocalKeyword = getLocalKeyword, 
      Render = Render, 
      __ctor__ = __ctor__
    }
  end)
end)
