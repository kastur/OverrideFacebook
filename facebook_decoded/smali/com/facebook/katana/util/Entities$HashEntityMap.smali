.class Lcom/facebook/katana/util/Entities$HashEntityMap;
.super Lcom/facebook/katana/util/Entities$MapIntMap;
.source "Entities.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 964
    invoke-direct {p0}, Lcom/facebook/katana/util/Entities$MapIntMap;-><init>()V

    .line 965
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/util/Entities$HashEntityMap;->a:Ljava/util/Map;

    .line 966
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/util/Entities$HashEntityMap;->b:Ljava/util/Map;

    .line 967
    return-void
.end method
