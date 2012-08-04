.class public Lcom/facebook/katana/api/gql/model/FeedProfileType;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FeedProfileType.java"


# static fields
.field public static final INVALID_ID:I = -0x1

.field public static final TYPE_EVENT:I = 0x3

.field public static final TYPE_GROUP:I = 0x2

.field public static final TYPE_PAGE:I = 0x1

.field public static final TYPE_USER:I


# instance fields
.field private final name:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "name"
    .end annotation
.end field

.field public final type:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/katana/api/gql/model/FeedProfileType;->type:I

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedProfileType;->name:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 28
    iget-object v1, p0, Lcom/facebook/katana/api/gql/model/FeedProfileType;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/api/gql/model/FeedProfileType;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 32
    const/4 v1, -0x1

    .line 33
    const-string v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 34
    const/4 v0, 0x0

    .line 47
    :cond_1
    :goto_1
    const-string v1, "type"

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/facebook/katana/api/gql/model/FeedProfileType;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 35
    :cond_2
    const-string v3, "page"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 37
    const-string v3, "group"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 38
    const/4 v0, 0x2

    goto :goto_1

    .line 39
    :cond_3
    const-string v3, "event"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 40
    const/4 v0, 0x3

    goto :goto_1

    .line 42
    :cond_4
    const-string v2, "FeedProfileType"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FeedProfileType should be either user/page/group/event and we got: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/facebook/katana/api/gql/model/FeedProfileType;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    goto :goto_1
.end method
