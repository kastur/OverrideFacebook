.class public abstract Lorg/codehaus/jackson/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lorg/codehaus/jackson/Versioned;


# instance fields
.field protected a:I

.field protected b:Lorg/codehaus/jackson/JsonToken;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput p1, p0, Lorg/codehaus/jackson/JsonParser;->a:I

    .line 289
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;
    .locals 2
    .parameter

    .prologue
    .line 1291
    new-instance v0, Lorg/codehaus/jackson/JsonParseException;

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->i()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    return-object v0
.end method

.method public abstract a()Lorg/codehaus/jackson/JsonToken;
.end method

.method public a(Lorg/codehaus/jackson/JsonParser$Feature;)Z
    .locals 2
    .parameter

    .prologue
    .line 498
    iget v0, p0, Lorg/codehaus/jackson/JsonParser;->a:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract a(Lorg/codehaus/jackson/Base64Variant;)[B
.end method

.method public abstract b()Lorg/codehaus/jackson/ObjectCodec;
.end method

.method public final c()Lorg/codehaus/jackson/JsonToken;
    .locals 2

    .prologue
    .line 564
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 565
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 566
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 568
    :cond_0
    return-object v0
.end method

.method public abstract close()V
.end method

.method public abstract d()Lorg/codehaus/jackson/JsonParser;
.end method

.method public e()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lorg/codehaus/jackson/JsonParser;->b:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lorg/codehaus/jackson/JsonParser;->b:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lorg/codehaus/jackson/JsonParser;->b:Lorg/codehaus/jackson/JsonToken;

    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/JsonParser;->b:Lorg/codehaus/jackson/JsonToken;

    .line 652
    :cond_0
    return-void
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()Lorg/codehaus/jackson/JsonLocation;
.end method

.method public abstract i()Lorg/codehaus/jackson/JsonLocation;
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 720
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public abstract l()[C
.end method

.method public abstract m()I
.end method

.method public abstract n()I
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 808
    const/4 v0, 0x0

    return v0
.end method

.method public abstract p()Ljava/lang/Number;
.end method

.method public abstract q()Lorg/codehaus/jackson/JsonParser$NumberType;
.end method

.method public r()B
    .locals 2

    .prologue
    .line 851
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->t()I

    move-result v0

    .line 853
    const/16 v1, -0x80

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_1

    .line 854
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Numeric value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of Java byte"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonParser;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0

    .line 856
    :cond_1
    int-to-byte v0, v0

    return v0
.end method

.method public s()S
    .locals 2

    .prologue
    .line 875
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->t()I

    move-result v0

    .line 876
    const/16 v1, -0x8000

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_1

    .line 877
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Numeric value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of Java short"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonParser;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0

    .line 879
    :cond_1
    int-to-short v0, v0

    return v0
.end method

.method public abstract t()I
.end method

.method public abstract u()J
.end method

.method public abstract v()Ljava/math/BigInteger;
.end method

.method public abstract w()F
.end method

.method public abstract x()D
.end method

.method public abstract y()Ljava/math/BigDecimal;
.end method

.method public z()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1008
    const/4 v0, 0x0

    return-object v0
.end method
