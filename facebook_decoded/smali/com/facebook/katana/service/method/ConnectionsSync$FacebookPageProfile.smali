.class Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;
.super Lcom/facebook/katana/model/FacebookProfile;
.source "ConnectionsSync.java"


# instance fields
.field protected connectionType:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/facebook/katana/model/FacebookProfile;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;-><init>()V

    return-void
.end method


# virtual methods
.method final b()Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;->connectionType:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    return-object v0
.end method

.method final c()J
    .locals 4

    .prologue
    .line 180
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;->mImageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;->connectionType:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    invoke-virtual {v2}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->b([Ljava/lang/Object;)J

    move-result-wide v0

    .line 182
    return-wide v0
.end method
