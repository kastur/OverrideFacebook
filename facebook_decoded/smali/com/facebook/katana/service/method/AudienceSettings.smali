.class public Lcom/facebook/katana/service/method/AudienceSettings;
.super Lcom/facebook/katana/service/method/FqlMultiQuery;
.source "AudienceSettings.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# static fields
.field private static a:Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Lcom/facebook/katana/model/PrivacySetting$Category;",
            "Lcom/facebook/katana/service/method/AudienceSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Lcom/facebook/katana/model/PrivacySetting;

.field private g:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Lcom/facebook/katana/model/PrivacySetting$Category;",
            "Lcom/facebook/katana/service/method/AudienceSettings;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/facebook/katana/model/PrivacySetting$Category;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FriendList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JLcom/facebook/katana/model/PrivacySetting$Category;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)V
    .locals 7
    .parameter
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
            "J",
            "Lcom/facebook/katana/model/PrivacySetting$Category;",
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Lcom/facebook/katana/model/PrivacySetting$Category;",
            "Lcom/facebook/katana/service/method/AudienceSettings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v0, p1

    move-object v2, p3

    move-wide v3, p5

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/service/method/AudienceSettings;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/model/PrivacySetting$Category;)Ljava/util/LinkedHashMap;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlMultiQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/LinkedHashMap;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 97
    iput-object p8, p0, Lcom/facebook/katana/service/method/AudienceSettings;->g:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    .line 98
    iput-object p7, p0, Lcom/facebook/katana/service/method/AudienceSettings;->h:Lcom/facebook/katana/model/PrivacySetting$Category;

    .line 99
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/model/PrivacySetting$Category;)Lcom/facebook/katana/service/method/AudienceSettings;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-static {}, Lcom/facebook/katana/service/method/AudienceSettings;->k()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/AudienceSettings;

    return-object v0
.end method

.method protected static a(Landroid/content/Context;Lcom/facebook/katana/model/PrivacySetting$Category;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/katana/model/PrivacySetting$Category;",
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Lcom/facebook/katana/model/PrivacySetting$Category;",
            "Lcom/facebook/katana/service/method/AudienceSettings;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 56
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v9

    .line 57
    if-nez v9, :cond_0

    .line 68
    :goto_0
    return-object v2

    .line 64
    :cond_0
    invoke-virtual {v9}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    .line 65
    new-instance v0, Lcom/facebook/katana/service/method/AudienceSettings;

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    iget-wide v5, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    move-object v1, p0

    move-object v4, v2

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/service/method/AudienceSettings;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JLcom/facebook/katana/model/PrivacySetting$Category;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)V

    .line 68
    const/16 v6, 0x3e9

    const/16 v7, 0x3fc

    move-object v3, v9

    move-object v4, p0

    move-object v5, v0

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/model/PrivacySetting$Category;)Ljava/util/LinkedHashMap;
    .locals 9
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
            "J",
            "Lcom/facebook/katana/model/PrivacySetting$Category;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/method/FqlQuery;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 128
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 129
    const-string v6, "privacy_setting"

    new-instance v0, Lcom/facebook/katana/service/method/AudienceSettings$FqlGetPrivacySetting;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/AudienceSettings$FqlGetPrivacySetting;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Lcom/facebook/katana/model/PrivacySetting$Category;)V

    invoke-virtual {v7, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v8, "friendlists"

    new-instance v0, Lcom/facebook/katana/service/method/FqlGetFriendLists;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/FqlGetFriendLists;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;J)V

    invoke-virtual {v7, v8, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-object v7
.end method

.method private static declared-synchronized k()Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Lcom/facebook/katana/model/PrivacySetting$Category;",
            "Lcom/facebook/katana/service/method/AudienceSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const-class v1, Lcom/facebook/katana/service/method/AudienceSettings;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/katana/service/method/AudienceSettings;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/facebook/katana/binding/SimpleManagedDataStore;

    new-instance v2, Lcom/facebook/katana/service/method/AudienceSettingsManagedStoreClient;

    invoke-direct {v2}, Lcom/facebook/katana/service/method/AudienceSettingsManagedStoreClient;-><init>()V

    invoke-direct {v0, v2}, Lcom/facebook/katana/binding/SimpleManagedDataStore;-><init>(Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;)V

    sput-object v0, Lcom/facebook/katana/service/method/AudienceSettings;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    .line 49
    :cond_0
    sget-object v0, Lcom/facebook/katana/service/method/AudienceSettings;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    const/16 v0, 0xc8

    if-ne p5, v0, :cond_0

    const/4 v2, 0x1

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/AudienceSettings;->g:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    iget-object v3, p0, Lcom/facebook/katana/service/method/AudienceSettings;->h:Lcom/facebook/katana/model/PrivacySetting$Category;

    const-string v4, ""

    move-object v1, p2

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 81
    invoke-virtual {v0, p5, p0}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILcom/facebook/katana/service/method/AudienceSettings;)V

    goto :goto_1

    .line 78
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 83
    :cond_1
    return-void
.end method

.method public final a(Lcom/facebook/katana/model/PrivacySetting;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/facebook/katana/service/method/AudienceSettings;->f:Lcom/facebook/katana/model/PrivacySetting;

    .line 109
    return-void
.end method

.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 1
    .parameter

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/facebook/katana/service/method/FqlMultiQuery;->a(Lorg/codehaus/jackson/JsonParser;)V

    .line 147
    const-string v0, "privacy_setting"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/AudienceSettings;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/AudienceSettings$FqlGetPrivacySetting;

    .line 149
    iget-object v0, v0, Lcom/facebook/katana/service/method/AudienceSettings$FqlGetPrivacySetting;->a:Lcom/facebook/katana/model/PrivacySetting;

    iput-object v0, p0, Lcom/facebook/katana/service/method/AudienceSettings;->f:Lcom/facebook/katana/model/PrivacySetting;

    .line 150
    const-string v0, "friendlists"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/AudienceSettings;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FqlGetFriendLists;

    .line 151
    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetFriendLists;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/AudienceSettings;->i:Ljava/util/List;

    .line 152
    return-void
.end method

.method public final h()Lcom/facebook/katana/model/PrivacySetting;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/katana/service/method/AudienceSettings;->f:Lcom/facebook/katana/model/PrivacySetting;

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FriendList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/katana/service/method/AudienceSettings;->i:Ljava/util/List;

    return-object v0
.end method

.method public final j()Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Lcom/facebook/katana/model/PrivacySetting$Category;",
            "Lcom/facebook/katana/service/method/AudienceSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/katana/service/method/AudienceSettings;->g:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    return-object v0
.end method
