# JSP
## Grundlegendes
JSP's sind wie HTML-Dateien, jedoch darf darin Java-Code ausgeführt werden. Eine solche Datei mit der Endung .jsp wird vom Java-Compiler zunächst in eine Java-Klasse vom Typ *HttpServlet* und anschließend in den Java-Bytecode übersetzt. Der Servlet-Container sorgt dann dafür, dass dieser Bytecode vom Client wie normaler HTTP-Code aussieht und wie auch auf HTML-Seiten direkt darauf zugegriffen werden kann.
## Direktiven
```
<%@ direktive param*="value*" %>
```
### include
Einbinden einer anderen JSP<br>
Param: file - Dateiname
### taglib
Tag-Libraries einbiden (Erweiterungen wie JSTL)<br>
Params:
- uri - Pfad zum Taglib-Deskriptor
- prefix - Präfix um auf Taglib zuzugreifen
- tagDir - Unterverzeichniss von "/WEB-INF/tags"
### page
Informationen zur Seite<br>
Params (nur wichtigste):
- language - Sprache
- extends - Falls Oberklasse von HttpServlet verschieden
- pageEncoding - Codierung der Datei
- contentType - Rückgabetyp des Servlet-Containers zum Browser

Beispiel:
```java
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
```
## Kommentare
### Kommentare die nicht im erzeugten HTML stehen
```
<%-- Kommentar --%>
```
### Kommentar im erzeugten HTML-Code
```
<!-- Kommentar -->
```
## Code-Snippets
Java-Code in Expressions und Skriptlets werden in Service-Routine des Servlets abgerufen. => Variablen nur für einen Seitenaufbau gültig! Gültigkeit verfliegt bei forward!
### Expressions
Java-Ausdruck ausführen.
```
<%= 4+5 %>
<%= request.getHeader("User-Agent") %>
```
### Skriptlets
Selbe wie Expressions, nur mehr als eine Expression.
```
<% while(true) { %>
    <h1>Overflow</h1>
<% } 
    String xy = "Hier kommt nie jemand hin;"%>
```
## Deklarationen
### Variablen
Instanzvariablendeklaration über Seitengrenze hinweg => bleiben über Servletlaufzeit bestehen
```
<%! int i = 4; %>
```
### Methoden
Wie Variablen nur anstatt Deklaration jetzt Methoden.
## Tags
Da Skriptlets unübersichtlich => Taglibs => Bibliotheken mit mehr Tags, die Code ausführen. Einbindung siehe [oben](#taglib).
```
<prefix:action attribut*="value*">
    content
</prefix:action>
```
### JSTL
Einbinden:
```
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
```
#### Variable setzen
```
<c:set var="x">5</c:set>
```
[Entspricht](#Variablen)
Zusätzlich kann Scope angegeben werden als attribut. 
#### Variable löschen
```
<c:remove var="x"/>
```
#### Variable ausgeben
```
<c:out value="x">5</c:set>
```
#### if
```
<c:if test="${name=="Peter"}">
    <span>Hallo Peterle</span>
</c:if>
```
## Expression Language
Zugriff auf Variablen in Attributen von Tags.
```
${x+5}
```
## Java Bean
```
<jsp:useBean id="AddressList" type="List" class="de.dhkarlsruhe.webengineering.beans.AddressList"></jsp:useBean>
```
Enstpricht
```java
List<Address> AddressList = new AddressList();
```
Scope kann als attribut festgelet werden.
### Get and Set
```
<jsp:setProperty name="Adress" property="street" value="1234"/>
<jsp:getProperty name"Address" property="street"/>
```
## Scopes
| Scope | Var | Class | ExpressionLang |
| ----- | --- | ----- | -------------- |
| Page | pageContext | PageContext | pageScope |
| Request | request | HttpServletRequest | requestScope|
| Session | session | HttpSession | sessionScope |
| Application | application | ServletContext | applicationScope|




