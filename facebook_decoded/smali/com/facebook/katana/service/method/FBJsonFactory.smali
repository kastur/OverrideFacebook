.class public Lcom/facebook/katana/service/method/FBJsonFactory;
.super Lorg/codehaus/jackson/JsonFactory;
.source "FBJsonFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/codehaus/jackson/JsonFactory;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 52
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 53
    new-instance v0, Lcom/facebook/katana/service/method/FBJsonFactory$FBJsonParser;

    invoke-virtual {p0, v4, v7}, Lcom/facebook/katana/service/method/FBJsonFactory;->a(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v2

    iget v3, p0, Lcom/facebook/katana/service/method/FBJsonFactory;->c:I

    iget-object v5, p0, Lcom/facebook/katana/service/method/FBJsonFactory;->b:Lorg/codehaus/jackson/ObjectCodec;

    iget-object v1, p0, Lcom/facebook/katana/service/method/FBJsonFactory;->a:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    const/4 v6, 0x0

    invoke-virtual {v1, v7, v6}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->a(ZZ)Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/FBJsonFactory$FBJsonParser;-><init>(Lcom/facebook/katana/service/method/FBJsonFactory;Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 44
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/facebook/katana/service/method/FBJsonFactory$FBJsonParser;

    invoke-virtual {p0, v4, v7}, Lcom/facebook/katana/service/method/FBJsonFactory;->a(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v2

    iget v3, p0, Lcom/facebook/katana/service/method/FBJsonFactory;->c:I

    iget-object v5, p0, Lcom/facebook/katana/service/method/FBJsonFactory;->b:Lorg/codehaus/jackson/ObjectCodec;

    iget-object v1, p0, Lcom/facebook/katana/service/method/FBJsonFactory;->a:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    const/4 v6, 0x0

    invoke-virtual {v1, v7, v6}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->a(ZZ)Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/FBJsonFactory$FBJsonParser;-><init>(Lcom/facebook/katana/service/method/FBJsonFactory;Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)V

    return-object v0
.end method
