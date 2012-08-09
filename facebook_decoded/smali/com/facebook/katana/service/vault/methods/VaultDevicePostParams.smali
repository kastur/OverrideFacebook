.class public Lcom/facebook/katana/service/vault/methods/VaultDevicePostParams;
.super Ljava/lang/Object;
.source "VaultDevicePostParams.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Boolean;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/facebook/katana/service/vault/methods/VaultDevicePostParams;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/vault/methods/VaultDevicePostParams;->b:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/facebook/katana/service/vault/methods/VaultDevicePostParams;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/service/vault/methods/VaultDevicePostParams;->a:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/facebook/katana/service/vault/methods/VaultDevicePostParams;->c:Ljava/lang/Boolean;

    .line 36
    iput-object v1, p0, Lcom/facebook/katana/service/vault/methods/VaultDevicePostParams;->d:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/facebook/katana/service/vault/methods/VaultDevicePostParams;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/vault/methods/VaultDevicePostParams;->b:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/facebook/katana/service/vault/methods/VaultDevicePostParams;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/service/vault/methods/VaultDevicePostParams;->a:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/vault/methods/VaultDevicePostParams;->c:Ljava/lang/Boolean;

    .line 25
    iput-object p2, p0, Lcom/facebook/katana/service/vault/methods/VaultDevicePostParams;->d:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private static e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 42
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 44
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 47
    :goto_0
    return-object v0

    .line 46
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/katana/service/vault/methods/VaultDevicePostParams;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/katana/service/vault/methods/VaultDevicePostParams;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/katana/service/vault/methods/VaultDevicePostParams;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/katana/service/vault/methods/VaultDevicePostParams;->d:Ljava/lang/String;

    return-object v0
.end method
