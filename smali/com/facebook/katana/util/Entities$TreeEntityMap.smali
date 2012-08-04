.class Lcom/facebook/katana/util/Entities$TreeEntityMap;
.super Lcom/facebook/katana/util/Entities$MapIntMap;
.source "Entities.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 971
    invoke-direct {p0}, Lcom/facebook/katana/util/Entities$MapIntMap;-><init>()V

    .line 972
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/util/Entities$TreeEntityMap;->a:Ljava/util/Map;

    .line 973
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/util/Entities$TreeEntityMap;->b:Ljava/util/Map;

    .line 974
    return-void
.end method
