.class public Lorg/codehaus/jackson/io/SerializedString;
.super Ljava/lang/Object;
.source "SerializedString.java"

# interfaces
.implements Lorg/codehaus/jackson/SerializableString;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:[B

.field private d:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/io/SerializedString;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()[C
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->d:[C

    .line 54
    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a()Lorg/codehaus/jackson/io/JsonStringEncoder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/io/SerializedString;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a(Ljava/lang/String;)[C

    move-result-object v0

    .line 56
    iput-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->d:[C

    .line 58
    :cond_0
    return-object v0
.end method

.method public final c()[B
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->c:[B

    .line 68
    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a()Lorg/codehaus/jackson/io/JsonStringEncoder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/io/SerializedString;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/io/JsonStringEncoder;->c(Ljava/lang/String;)[B

    move-result-object v0

    .line 70
    iput-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->c:[B

    .line 72
    :cond_0
    return-object v0
.end method

.method public final d()[B
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->b:[B

    .line 82
    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a()Lorg/codehaus/jackson/io/JsonStringEncoder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/io/SerializedString;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/io/JsonStringEncoder;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 84
    iput-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->b:[B

    .line 86
    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 104
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    .line 105
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :cond_2
    check-cast p1, Lorg/codehaus/jackson/io/SerializedString;

    .line 107
    iget-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->a:Ljava/lang/String;

    iget-object v1, p1, Lorg/codehaus/jackson/io/SerializedString;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->a:Ljava/lang/String;

    return-object v0
.end method
