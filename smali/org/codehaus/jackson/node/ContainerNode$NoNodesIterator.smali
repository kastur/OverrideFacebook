.class public Lorg/codehaus/jackson/node/ContainerNode$NoNodesIterator;
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
        "Lorg/codehaus/jackson/JsonNode;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lorg/codehaus/jackson/node/ContainerNode$NoNodesIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lorg/codehaus/jackson/node/ContainerNode$NoNodesIterator;

    invoke-direct {v0}, Lorg/codehaus/jackson/node/ContainerNode$NoNodesIterator;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/node/ContainerNode$NoNodesIterator;->a:Lorg/codehaus/jackson/node/ContainerNode$NoNodesIterator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lorg/codehaus/jackson/node/ContainerNode$NoNodesIterator;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lorg/codehaus/jackson/node/ContainerNode$NoNodesIterator;->a:Lorg/codehaus/jackson/node/ContainerNode$NoNodesIterator;

    return-object v0
.end method

.method private static b()Lorg/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lorg/codehaus/jackson/node/ContainerNode$NoNodesIterator;->b()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
