.class Lcom/facebook/katana/feed/NewsFeedFragment$FeedFetchListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "NewsFeedFragment.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/feed/NewsFeedFragment;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/feed/NewsFeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/facebook/katana/feed/NewsFeedFragment$FeedFetchListener;->a:Lcom/facebook/katana/feed/NewsFeedFragment;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/feed/NewsFeedFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/katana/feed/NewsFeedFragment$FeedFetchListener;-><init>(Lcom/facebook/katana/feed/NewsFeedFragment;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/api/gql/model/FeedHomeStories;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedFragment$FeedFetchListener;->a:Lcom/facebook/katana/feed/NewsFeedFragment;

    invoke-virtual {v0, p4}, Lcom/facebook/katana/feed/NewsFeedFragment;->a(Lcom/facebook/katana/api/gql/model/FeedHomeStories;)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedFragment$FeedFetchListener;->a:Lcom/facebook/katana/feed/NewsFeedFragment;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/katana/feed/NewsFeedFragment;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
