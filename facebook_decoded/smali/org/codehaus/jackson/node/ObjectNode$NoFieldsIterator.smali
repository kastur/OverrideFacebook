.class public Lorg/codehaus/jackson/node/ObjectNode$NoFieldsIterator;
.super Ljava/lang/Object;
.source "ObjectNode.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Lorg/codehaus/jackson/JsonNode;",
        ">;>;"
    }
.end annotation


# static fields
.field static final a:Lorg/codehaus/jackson/node/ObjectNode$NoFieldsIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 612
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode$NoFieldsIterator;

    invoke-direct {v0}, Lorg/codehaus/jackson/node/ObjectNode$NoFieldsIterator;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/node/ObjectNode$NoFieldsIterator;->a:Lorg/codehaus/jackson/node/ObjectNode$NoFieldsIterator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 617
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 616
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 609
    invoke-static {}, Lorg/codehaus/jackson/node/ObjectNode$NoFieldsIterator;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 620
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
