.class Lcom/facebook/katana/service/method/FBJsonFactory$FBJsonParser;
.super Lorg/codehaus/jackson/impl/ReaderBasedParser;
.source "FBJsonFactory.java"


# direct methods
.method public constructor <init>(Lcom/facebook/katana/service/method/FBJsonFactory;Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/ReaderBasedParser;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)V

    .line 24
    return-void
.end method


# virtual methods
.method public final a()Lorg/codehaus/jackson/JsonToken;
    .locals 2

    .prologue
    .line 33
    invoke-super {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected end of json input"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    return-object v0
.end method
