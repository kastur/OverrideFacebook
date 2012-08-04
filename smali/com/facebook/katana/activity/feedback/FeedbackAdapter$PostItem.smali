.class public Lcom/facebook/katana/activity/feedback/FeedbackAdapter$PostItem;
.super Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;
.source "FeedbackAdapter.java"


# instance fields
.field private a:Lcom/facebook/katana/model/FacebookPost;


# direct methods
.method protected constructor <init>(Lcom/facebook/katana/model/FacebookPost;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p2}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;-><init>(I)V

    .line 94
    iput-object p1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$PostItem;->a:Lcom/facebook/katana/model/FacebookPost;

    .line 95
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/katana/model/FacebookPost;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$PostItem;->a:Lcom/facebook/katana/model/FacebookPost;

    return-object v0
.end method
