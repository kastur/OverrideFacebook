.class public Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;
.super Ljava/lang/Object;
.source "ContainerNode.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;

    invoke-direct {v0}, Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;->a:Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;->a:Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;

    return-object v0
.end method

.method private static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
