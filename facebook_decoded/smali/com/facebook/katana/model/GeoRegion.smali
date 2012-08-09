.class public Lcom/facebook/katana/model/GeoRegion;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "GeoRegion.java"


# static fields
.field public static final INVALID_ID:J = -0x1L


# instance fields
.field public final abbrName:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "abbr_name"
    .end annotation
.end field

.field public final id:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "page_fbid"
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "type"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/facebook/katana/model/GeoRegion;->abbrName:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/facebook/katana/model/GeoRegion;->type:Ljava/lang/String;

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/model/GeoRegion;->id:J

    .line 35
    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/GeoRegion;",
            ">;)",
            "Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 84
    if-nez p0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-object v2

    .line 91
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/GeoRegion;

    .line 92
    iget-object v6, v0, Lcom/facebook/katana/model/GeoRegion;->type:Ljava/lang/String;

    sget-object v7, Lcom/facebook/katana/model/GeoRegion$Type;->city:Lcom/facebook/katana/model/GeoRegion$Type;

    invoke-virtual {v7}, Lcom/facebook/katana/model/GeoRegion$Type;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 93
    iget-object v1, v0, Lcom/facebook/katana/model/GeoRegion;->abbrName:Ljava/lang/String;

    .line 94
    iget-wide v6, v0, Lcom/facebook/katana/model/GeoRegion;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v4, v1

    move-object v1, v0

    .line 95
    goto :goto_1

    .line 97
    :cond_3
    iget-object v6, v0, Lcom/facebook/katana/model/GeoRegion;->type:Ljava/lang/String;

    sget-object v7, Lcom/facebook/katana/model/GeoRegion$Type;->state:Lcom/facebook/katana/model/GeoRegion$Type;

    invoke-virtual {v7}, Lcom/facebook/katana/model/GeoRegion$Type;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 98
    iget-object v0, v0, Lcom/facebook/katana/model/GeoRegion;->abbrName:Ljava/lang/String;

    move-object v3, v0

    .line 99
    goto :goto_1

    .line 103
    :cond_4
    if-eqz v4, :cond_5

    .line 109
    :goto_2
    if-eqz v4, :cond_0

    .line 110
    new-instance v2, Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    invoke-direct {v2, v4, v1}, Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 105
    :cond_5
    if-eqz v3, :cond_6

    move-object v4, v3

    .line 106
    goto :goto_2

    :cond_6
    move-object v4, v2

    goto :goto_2
.end method
