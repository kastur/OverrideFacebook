.class public Lcom/facebook/katana/api/gql/model/FeedProfile;
.super Lcom/facebook/katana/api/gql/model/FeedNode;
.source "FeedProfile.java"


# instance fields
.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "name"
    .end annotation
.end field

.field public final profilePicture:Lcom/facebook/katana/api/gql/model/FeedImage;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "profile_picture"
    .end annotation
.end field

.field public final profileType:Lcom/facebook/katana/api/gql/model/FeedProfileType;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "__type__"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lcom/facebook/katana/api/gql/model/FeedNode;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedProfile;->name:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedProfile;->profilePicture:Lcom/facebook/katana/api/gql/model/FeedImage;

    .line 28
    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedProfile;->profileType:Lcom/facebook/katana/api/gql/model/FeedProfileType;

    .line 29
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/katana/api/gql/model/FeedProfile;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {p1, v0}, Lcom/facebook/katana/IntentUriHandler;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 63
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 33
    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedProfile;->profileType:Lcom/facebook/katana/api/gql/model/FeedProfileType;

    if-nez v0, :cond_0

    .line 34
    const-string v0, "NativeNewsFeed"

    const-string v1, "FeedProfile should always belongs to a type"

    invoke-static {v0, v1, v3}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedProfile;->profileType:Lcom/facebook/katana/api/gql/model/FeedProfileType;

    iget v0, v0, Lcom/facebook/katana/api/gql/model/FeedProfileType;->type:I

    packed-switch v0, :pswitch_data_0

    .line 53
    const-string v0, "NativeNewsFeed"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported FeedProfileType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/api/gql/model/FeedProfile;->profileType:Lcom/facebook/katana/api/gql/model/FeedProfileType;

    iget v2, v2, Lcom/facebook/katana/api/gql/model/FeedProfileType;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 41
    :pswitch_0
    const-string v0, "fb://profile/%s"

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/api/gql/model/FeedProfile;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :pswitch_1
    const-string v0, "fb://page/%s"

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/api/gql/model/FeedProfile;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :pswitch_2
    const-string v0, "fb://group/%s/wall/inner"

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/api/gql/model/FeedProfile;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :pswitch_3
    const-string v0, "fb://event/%s"

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/api/gql/model/FeedProfile;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
