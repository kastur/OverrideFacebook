.class Lcom/facebook/katana/feed/NewsFeedAdapter$1;
.super Ljava/lang/Object;
.source "NewsFeedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/api/gql/model/FeedProfile;

.field private synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/facebook/katana/feed/NewsFeedAdapter;Lcom/facebook/katana/api/gql/model/FeedProfile;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p2, p0, Lcom/facebook/katana/feed/NewsFeedAdapter$1;->a:Lcom/facebook/katana/api/gql/model/FeedProfile;

    iput-object p3, p0, Lcom/facebook/katana/feed/NewsFeedAdapter$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedAdapter$1;->a:Lcom/facebook/katana/api/gql/model/FeedProfile;

    iget-object v1, p0, Lcom/facebook/katana/feed/NewsFeedAdapter$1;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/api/gql/model/FeedProfile;->a(Landroid/content/Context;)V

    .line 195
    return-void
.end method
