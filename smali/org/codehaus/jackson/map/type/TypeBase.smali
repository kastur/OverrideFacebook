.class public abstract Lorg/codehaus/jackson/map/type/TypeBase;
.super Lorg/codehaus/jackson/type/JavaType;
.source "TypeBase.java"


# direct methods
.method protected constructor <init>(Ljava/lang/Class;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/type/JavaType;-><init>(Ljava/lang/Class;I)V

    .line 14
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected final b(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->t()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBase;->d:Ljava/lang/Object;

    .line 31
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->u()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBase;->e:Ljava/lang/Object;

    .line 32
    return-object p0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/TypeBase;->a()Ljava/lang/String;

    move-result-object v0

    .line 23
    return-object v0
.end method
