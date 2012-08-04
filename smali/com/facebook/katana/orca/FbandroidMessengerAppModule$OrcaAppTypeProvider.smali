.class Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaAppTypeProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbandroidMessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/app/OrcaAppType;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaAppTypeProvider;-><init>()V

    return-void
.end method

.method private static b()Lcom/facebook/orca/app/OrcaAppType;
    .locals 10

    .prologue
    .line 201
    new-instance v0, Lcom/facebook/orca/app/OrcaAppType;

    const-string v1, "katana"

    const-wide v2, 0x51a67c8e50L

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "882a8490361da98702bf97a021ddc14d"

    const-string v4, "62f8ce9f74b12f84c123cc23437a4a32"

    const-string v5, "0e1ruJ7mZbBWslnLnQQ5RPITlJs7QBrg8JYbTyg"

    const/4 v6, 0x0

    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "https://m.facebook.com/mobile_builds"

    :goto_0
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Lcom/facebook/orca/app/OrcaAppType$Audience;->DEVELOPMENT:Lcom/facebook/orca/app/OrcaAppType$Audience;

    :goto_1
    sget-object v9, Lcom/facebook/orca/app/OrcaAppType$Product;->FB4A:Lcom/facebook/orca/app/OrcaAppType$Product;

    invoke-direct/range {v0 .. v9}, Lcom/facebook/orca/app/OrcaAppType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/app/OrcaAppType$Audience;Lcom/facebook/orca/app/OrcaAppType$Product;)V

    return-object v0

    :cond_0
    const-string v7, "https://market.android.com/details?id=com.facebook.katana"

    goto :goto_0

    :cond_1
    sget-object v8, Lcom/facebook/orca/app/OrcaAppType$Audience;->PUBLIC:Lcom/facebook/orca/app/OrcaAppType$Audience;

    goto :goto_1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaAppTypeProvider;->b()Lcom/facebook/orca/app/OrcaAppType;

    move-result-object v0

    return-object v0
.end method
