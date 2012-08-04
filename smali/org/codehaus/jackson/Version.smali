.class public Lorg/codehaus/jackson/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/codehaus/jackson/Version;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12
    new-instance v0, Lorg/codehaus/jackson/Version;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lorg/codehaus/jackson/Version;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lorg/codehaus/jackson/Version;->a:I

    .line 30
    iput v0, p0, Lorg/codehaus/jackson/Version;->b:I

    .line 31
    iput v0, p0, Lorg/codehaus/jackson/Version;->c:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/Version;->d:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private a(Lorg/codehaus/jackson/Version;)I
    .locals 2
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lorg/codehaus/jackson/Version;->a:I

    iget v1, p1, Lorg/codehaus/jackson/Version;->a:I

    sub-int/2addr v0, v1

    .line 82
    if-nez v0, :cond_0

    .line 83
    iget v0, p0, Lorg/codehaus/jackson/Version;->b:I

    iget v1, p1, Lorg/codehaus/jackson/Version;->b:I

    sub-int/2addr v0, v1

    .line 84
    if-nez v0, :cond_0

    .line 85
    iget v0, p0, Lorg/codehaus/jackson/Version;->c:I

    iget v1, p1, Lorg/codehaus/jackson/Version;->c:I

    sub-int/2addr v0, v1

    .line 88
    :cond_0
    return v0
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/codehaus/jackson/Version;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/Version;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 9
    check-cast p1, Lorg/codehaus/jackson/Version;

    invoke-direct {p0, p1}, Lorg/codehaus/jackson/Version;->a(Lorg/codehaus/jackson/Version;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    if-ne p1, p0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 72
    :cond_3
    check-cast p1, Lorg/codehaus/jackson/Version;

    .line 73
    iget v2, p1, Lorg/codehaus/jackson/Version;->a:I

    iget v3, p0, Lorg/codehaus/jackson/Version;->a:I

    if-ne v2, v3, :cond_4

    iget v2, p1, Lorg/codehaus/jackson/Version;->b:I

    iget v3, p0, Lorg/codehaus/jackson/Version;->b:I

    if-ne v2, v3, :cond_4

    iget v2, p1, Lorg/codehaus/jackson/Version;->c:I

    iget v3, p0, Lorg/codehaus/jackson/Version;->c:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lorg/codehaus/jackson/Version;->a:I

    iget v1, p0, Lorg/codehaus/jackson/Version;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/codehaus/jackson/Version;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2e

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    iget v1, p0, Lorg/codehaus/jackson/Version;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    iget v1, p0, Lorg/codehaus/jackson/Version;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    iget v1, p0, Lorg/codehaus/jackson/Version;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {p0}, Lorg/codehaus/jackson/Version;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/Version;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
