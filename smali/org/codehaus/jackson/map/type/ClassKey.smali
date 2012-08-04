.class public final Lorg/codehaus/jackson/map/type/ClassKey;
.super Ljava/lang/Object;
.source "ClassKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/codehaus/jackson/map/type/ClassKey;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lorg/codehaus/jackson/map/type/ClassKey;->b:Ljava/lang/Class;

    .line 35
    iput-object v0, p0, Lorg/codehaus/jackson/map/type/ClassKey;->a:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/map/type/ClassKey;->c:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/codehaus/jackson/map/type/ClassKey;->b:Ljava/lang/Class;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/type/ClassKey;->a:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ClassKey;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/map/type/ClassKey;->c:I

    .line 44
    return-void
.end method

.method private a(Lorg/codehaus/jackson/map/type/ClassKey;)I
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ClassKey;->a:Ljava/lang/String;

    iget-object v1, p1, Lorg/codehaus/jackson/map/type/ClassKey;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 19
    check-cast p1, Lorg/codehaus/jackson/map/type/ClassKey;

    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/type/ClassKey;->a(Lorg/codehaus/jackson/map/type/ClassKey;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    if-ne p1, p0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 75
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 77
    :cond_3
    check-cast p1, Lorg/codehaus/jackson/map/type/ClassKey;

    .line 86
    iget-object v2, p1, Lorg/codehaus/jackson/map/type/ClassKey;->b:Ljava/lang/Class;

    iget-object v3, p0, Lorg/codehaus/jackson/map/type/ClassKey;->b:Ljava/lang/Class;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/codehaus/jackson/map/type/ClassKey;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ClassKey;->a:Ljava/lang/String;

    return-object v0
.end method
