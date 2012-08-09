.class Lcom/facebook/katana/service/method/ConnectionsSync$FacebookFanPageProfile;
.super Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;
.source "ConnectionsSync.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;-><init>(B)V

    .line 206
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->PAGE_FAN:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    iput-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookFanPageProfile;->connectionType:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    .line 207
    return-void
.end method
