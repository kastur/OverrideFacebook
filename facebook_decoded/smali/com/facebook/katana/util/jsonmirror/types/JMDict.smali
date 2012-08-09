.class public abstract Lcom/facebook/katana/util/jsonmirror/types/JMDict;
.super Lcom/facebook/katana/util/jsonmirror/types/JMBase;
.source "JMDict.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/types/JMBase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Lcom/facebook/katana/util/Tuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/katana/util/Tuple",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/util/Tuple",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract b()Lcom/facebook/katana/util/jsonmirror/JMDictDestination;
.end method

.method public abstract c()Z
.end method
