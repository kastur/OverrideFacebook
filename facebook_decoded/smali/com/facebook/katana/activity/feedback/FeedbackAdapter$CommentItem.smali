.class public Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentItem;
.super Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;
.source "FeedbackAdapter.java"


# instance fields
.field private final a:Lcom/facebook/katana/model/FacebookPost$Comment;

.field private final b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPost$Comment;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 120
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;-><init>(I)V

    .line 121
    iput-object p2, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentItem;->a:Lcom/facebook/katana/model/FacebookPost$Comment;

    .line 122
    sget-object v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    iget-wide v1, p2, Lcom/facebook/katana/model/FacebookPost$Comment;->time:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-static {p1, v0, v1, v2}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentItem;->b:Ljava/lang/String;

    .line 125
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/katana/model/FacebookPost$Comment;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentItem;->a:Lcom/facebook/katana/model/FacebookPost$Comment;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentItem;->b:Ljava/lang/String;

    return-object v0
.end method
