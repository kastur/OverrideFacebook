.class public Lcom/facebook/katana/model/FacebookGroup;
.super Lcom/facebook/katana/model/FacebookProfile;
.source "FacebookGroup.java"


# instance fields
.field protected mUnreadCount:I

.field public final mUpdateTime:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "update_time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 32
    const-wide/16 v1, -0x1

    const/4 v5, 0x3

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/model/FacebookProfile;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookGroup;->mUpdateTime:J

    .line 34
    return-void
.end method

.method protected static postprocessJMAutogenFields(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    const-string v0, "id"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 46
    const-string v1, "gid"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v0, "pic_square"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 51
    const-string v1, "pic_small"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "type"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput p1, p0, Lcom/facebook/katana/model/FacebookGroup;->mUnreadCount:I

    .line 61
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/facebook/katana/model/FacebookGroup;->mUnreadCount:I

    return v0
.end method
