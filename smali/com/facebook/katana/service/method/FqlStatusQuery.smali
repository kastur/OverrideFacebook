.class public Lcom/facebook/katana/service/method/FqlStatusQuery;
.super Lcom/facebook/katana/service/method/FqlQuery;
.source "FqlStatusQuery.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlStatusQuery;->a:Ljava/util/List;

    .line 62
    iput-object p5, p0, Lcom/facebook/katana/service/method/FqlStatusQuery;->f:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 105
    sget-object v0, Lcom/facebook/katana/provider/UserStatusesProvider;->a:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 106
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 107
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookStatus;

    .line 108
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 110
    const-string v4, "user_id"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookStatus;->a()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v5

    iget-wide v5, v5, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    const-string v4, "first_name"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookStatus;->a()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v5

    iget-object v5, v5, Lcom/facebook/katana/model/FacebookUser;->mFirstName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v4, "last_name"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookStatus;->a()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v5

    iget-object v5, v5, Lcom/facebook/katana/model/FacebookUser;->mLastName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v4, "display_name"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookStatus;->a()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/katana/model/FacebookUser;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v4, "user_pic"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookStatus;->a()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v5

    iget-object v5, v5, Lcom/facebook/katana/model/FacebookUser;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v4, "message"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookStatus;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v4, "timestamp"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookStatus;->c()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    sget-object v0, Lcom/facebook/katana/provider/UserStatusesProvider;->a:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {p0}, Lcom/facebook/katana/util/PlatformUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-static {p0, p1, p2}, Lcom/facebook/katana/platform/PlatformStorage;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 123
    :cond_1
    return-void
.end method


# virtual methods
.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 3
    .parameter

    .prologue
    .line 73
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 75
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 76
    new-instance v0, Lcom/facebook/katana/model/FacebookApiException;

    invoke-direct {v0, p1}, Lcom/facebook/katana/model/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    .line 77
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookApiException;->a()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 78
    throw v0

    .line 80
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    .line 81
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 82
    :goto_0
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_3

    .line 83
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlStatusQuery;->a:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/model/FacebookStatus;

    invoke-direct {v1, p1}, Lcom/facebook/katana/model/FacebookStatus;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed JSON"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlStatusQuery;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 92
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlStatusQuery;->o:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/katana/service/method/FqlStatusQuery;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/katana/service/method/FqlStatusQuery;->a:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/service/method/FqlStatusQuery;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 94
    :cond_4
    return-void
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlStatusQuery;->a:Ljava/util/List;

    return-object v0
.end method
