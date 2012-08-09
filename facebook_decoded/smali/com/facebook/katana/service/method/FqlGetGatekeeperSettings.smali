.class public Lcom/facebook/katana/service/method/FqlGetGatekeeperSettings;
.super Lcom/facebook/katana/service/method/FqlGeneratedQuery;
.source "FqlGetGatekeeperSettings.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# instance fields
.field private a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/util/Set;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/method/ServiceOperationListener;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 143
    const-string v5, "project_gating"

    invoke-static {p5}, Lcom/facebook/katana/service/method/FqlGetGatekeeperSettings;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/facebook/katana/model/GatekeeperSetting;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/service/method/FqlGeneratedQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlGetGatekeeperSettings;->f:Ljava/util/Map;

    .line 148
    iput-object p6, p0, Lcom/facebook/katana/service/method/FqlGetGatekeeperSettings;->a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    .line 149
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Set;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 55
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v8

    .line 58
    if-eqz v8, :cond_0

    const/16 v0, 0x192

    invoke-virtual {v8, v0}, Lcom/facebook/katana/binding/AppSession;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-object v2

    .line 63
    :cond_1
    invoke-virtual {v8}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_0

    .line 68
    new-instance v0, Lcom/facebook/katana/service/method/FqlGetGatekeeperSettings;

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    move-object v1, p0

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/FqlGetGatekeeperSettings;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/util/Set;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)V

    .line 72
    const/16 v6, 0x3e9

    const/16 v7, 0x191

    move-object v3, v8

    move-object v4, p0

    move-object v5, v0

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static a(Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    const-string v1, "project_name IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, ","

    sget-object v2, Lcom/facebook/katana/util/StringUtils;->a:Lcom/facebook/katana/util/StringUtils$StringProcessor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/facebook/katana/util/StringUtils$StringProcessor;[Ljava/lang/Object;)V

    .line 157
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    const-string v0, "extended_type"

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 85
    packed-switch v0, :pswitch_data_0

    .line 121
    :cond_0
    return-void

    .line 87
    :pswitch_0
    const/16 v0, 0xc8

    if-ne p5, v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetGatekeeperSettings;->f:Ljava/util/Map;

    invoke-static {p2, v0}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 90
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/facebook/katana/binding/AppSessionListener;

    .line 91
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetGatekeeperSettings;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, p5, v0, v1}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILjava/lang/String;Z)V

    goto :goto_0

    .line 100
    :pswitch_1
    const/4 v4, 0x0

    .line 103
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetGatekeeperSettings;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 107
    const/16 v0, 0xc8

    if-ne p5, v0, :cond_4

    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    .line 109
    :goto_1
    const/4 v0, 0x0

    .line 110
    if-eqz v5, :cond_5

    .line 111
    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v6, v0

    .line 115
    :goto_2
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetGatekeeperSettings;->a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 117
    invoke-virtual {v0, p5, v3, v6}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILjava/lang/String;Z)V

    goto :goto_3

    .line 107
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    move v6, v0

    goto :goto_2

    .line 85
    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 4
    .parameter

    .prologue
    .line 172
    const-class v0, Lcom/facebook/katana/model/GatekeeperSetting;

    invoke-static {p1, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->b(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 175
    if-nez v0, :cond_1

    .line 182
    :cond_0
    return-void

    .line 179
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/GatekeeperSetting;

    .line 180
    iget-object v2, p0, Lcom/facebook/katana/service/method/FqlGetGatekeeperSettings;->f:Ljava/util/Map;

    iget-object v3, v0, Lcom/facebook/katana/model/GatekeeperSetting;->mProjectName:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/facebook/katana/model/GatekeeperSetting;->mEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
