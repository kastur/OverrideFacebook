.class public Lcom/facebook/katana/service/method/FqlGetProfile;
.super Lcom/facebook/katana/service/method/FqlGetProfileGeneric;
.source "FqlGetProfile.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/katana/service/method/FqlGetProfileGeneric",
        "<",
        "Lcom/facebook/katana/model/FacebookProfile;",
        ">;",
        "Lcom/facebook/katana/service/method/ApiMethodCallback;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    const-class v6, Lcom/facebook/katana/model/FacebookProfile;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/FqlGetProfileGeneric;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;Ljava/lang/Class;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/util/Map;)V
    .locals 6
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p5}, Lcom/facebook/katana/service/method/FqlGetProfile;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlGetProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 80
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v8

    .line 81
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 82
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v0, Lcom/facebook/katana/service/method/FqlGetProfile;

    invoke-virtual {v8}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    move-object v1, p0

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlGetProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/util/Map;)V

    .line 87
    const/16 v6, 0x3e9

    const/16 v7, 0x54

    move-object v3, v8

    move-object v4, p0

    move-object v5, v0

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " id IN("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    const-string v1, ","

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/facebook/katana/util/StringUtils$StringProcessor;[Ljava/lang/Object;)V

    .line 174
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 102
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v8

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id IN (SELECT uid FROM group_member WHERE gid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 109
    new-instance v0, Lcom/facebook/katana/service/method/FqlGetProfile;

    invoke-virtual {v8}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    move-object v1, p0

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlGetProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V

    .line 113
    const/16 v6, 0x3e9

    const/16 v7, 0x259

    move-object v3, v8

    move-object v4, p0

    move-object v5, v0

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    const-string v0, "extended_type"

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 126
    sparse-switch v0, :sswitch_data_0

    .line 152
    :cond_0
    return-void

    .line 128
    :sswitch_0
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lcom/facebook/katana/service/method/FqlGetProfile;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    move-object v1, v0

    .line 133
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 137
    invoke-virtual {v0, p5, v1}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILcom/facebook/katana/model/FacebookProfile;)V

    goto :goto_1

    .line 145
    :sswitch_1
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 146
    iget-object v2, p0, Lcom/facebook/katana/service/method/FqlGetProfile;->a:Ljava/util/Map;

    invoke-virtual {v0, p5, v2}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILjava/util/Map;)V

    goto :goto_2

    :cond_1
    move-object v1, v0

    goto :goto_0

    .line 126
    nop

    :sswitch_data_0
    .sparse-switch
        0x54 -> :sswitch_0
        0x259 -> :sswitch_1
    .end sparse-switch
.end method

.method public final h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetProfile;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
