.class Lcom/facebook/katana/activity/places/AddPageTopicActivity$1;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "AddPageTopicActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/places/AddPageTopicActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/places/AddPageTopicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/facebook/katana/activity/places/AddPageTopicActivity$1;->a:Lcom/facebook/katana/activity/places/AddPageTopicActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPageTopicActivity$1;->a:Lcom/facebook/katana/activity/places/AddPageTopicActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->a(Lcom/facebook/katana/activity/places/AddPageTopicActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPageTopicActivity$1;->a:Lcom/facebook/katana/activity/places/AddPageTopicActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->b(Lcom/facebook/katana/activity/places/AddPageTopicActivity;)Lcom/facebook/katana/activity/places/AddPageTopicAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/AddPageTopicAdapter;->e()V

    .line 47
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPageTopicActivity$1;->a:Lcom/facebook/katana/activity/places/AddPageTopicActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/AddPageTopicActivity;->b(Lcom/facebook/katana/activity/places/AddPageTopicActivity;)Lcom/facebook/katana/activity/places/AddPageTopicAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/AddPageTopicAdapter;->i()V

    .line 49
    :cond_0
    return-void
.end method
