.class public Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateParams;
.super Ljava/lang/Object;
.source "VaultDeviceUpdateParams.java"


# instance fields
.field private final a:J

.field private b:Ljava/lang/Long;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateParams;->a:J

    .line 20
    iput-object v0, p0, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateParams;->b:Ljava/lang/Long;

    .line 21
    iput-object v0, p0, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateParams;->c:Ljava/lang/Boolean;

    .line 22
    iput-object v0, p0, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateParams;->d:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateParams;->a:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateParams;->b:Ljava/lang/Long;

    .line 33
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateParams;->d:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateParams;->c:Ljava/lang/Boolean;

    .line 38
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateParams;->b:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 50
    new-instance v1, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v2, "last_sync_time"

    iget-object v3, p0, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateParams;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateParams;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 53
    new-instance v1, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v2, "enabled"

    iget-object v3, p0, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateParams;->c:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateParams;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 56
    new-instance v1, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v2, "sync_mode"

    iget-object v3, p0, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateParams;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_2
    return-object v0
.end method
