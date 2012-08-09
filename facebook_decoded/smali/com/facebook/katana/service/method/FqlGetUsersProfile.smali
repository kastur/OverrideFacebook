.class public Lcom/facebook/katana/service/method/FqlGetUsersProfile;
.super Lcom/facebook/katana/service/method/FqlGeneratedQuery;
.source "FqlGetUsersProfile.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookUser;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/katana/model/FacebookUser;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;Ljava/lang/Class;)V
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
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/katana/model/FacebookUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    const-string v5, "user"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/service/method/FqlGeneratedQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 102
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->f:Ljava/util/Map;

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->a:Ljava/lang/Object;

    .line 104
    iput-object p6, p0, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->g:Ljava/lang/Class;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->h:Z

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/util/Map;Ljava/lang/Class;)V
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookUser;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/katana/model/FacebookUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    const-string v5, "user"

    invoke-static {p5}, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/service/method/FqlGeneratedQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 80
    iput-object p5, p0, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->f:Ljava/util/Map;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->a:Ljava/lang/Object;

    .line 82
    iput-object p6, p0, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->g:Ljava/lang/Class;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->h:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/util/Map;Ljava/lang/Object;)V
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookUser;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v4, 0x0

    const-string v5, "user"

    invoke-static {p5}, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/facebook/katana/model/FacebookUser;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/service/method/FqlGeneratedQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 57
    iput-object p5, p0, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->f:Ljava/util/Map;

    .line 58
    iput-object p6, p0, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->a:Ljava/lang/Object;

    .line 59
    const-class v0, Lcom/facebook/katana/model/FacebookUser;

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->g:Ljava/lang/Class;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->h:Z

    .line 61
    return-void
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
            "Lcom/facebook/katana/model/FacebookUser;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uid IN("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    const-string v1, ","

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/facebook/katana/util/StringUtils$StringProcessor;[Ljava/lang/Object;)V

    .line 160
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 5
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->g:Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->b(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookUser;

    .line 121
    iget-object v2, p0, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->f:Ljava/util/Map;

    iget-wide v3, v0, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->h:Z

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->g:Ljava/lang/Class;

    iget-object v3, p0, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->o:Landroid/content/Context;

    const v4, 0x7f0b01f5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/katana/model/FacebookUser;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/facebook/katana/model/FacebookUser;

    move-result-object v2

    .line 130
    iget-object v3, p0, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 134
    :cond_2
    return-void
.end method

.method public final h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->f:Ljava/util/Map;

    return-object v0
.end method

.method public final i()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->a:Ljava/lang/Object;

    return-object v0
.end method
