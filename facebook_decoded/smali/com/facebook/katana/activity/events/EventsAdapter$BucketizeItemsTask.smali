.class Lcom/facebook/katana/activity/events/EventsAdapter$BucketizeItemsTask;
.super Landroid/os/AsyncTask;
.source "EventsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/events/EventsAdapter;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/events/EventsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/facebook/katana/activity/events/EventsAdapter$BucketizeItemsTask;->a:Lcom/facebook/katana/activity/events/EventsAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/events/EventsAdapter;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/events/EventsAdapter$BucketizeItemsTask;-><init>(Lcom/facebook/katana/activity/events/EventsAdapter;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 373
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$BucketizeItemsTask;->a:Lcom/facebook/katana/activity/events/EventsAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventsAdapter;->a(Lcom/facebook/katana/activity/events/EventsAdapter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 381
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$BucketizeItemsTask;->a:Lcom/facebook/katana/activity/events/EventsAdapter;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/facebook/katana/activity/events/EventsAdapter;->a(Lcom/facebook/katana/activity/events/EventsAdapter;Ljava/util/List;)Ljava/util/List;

    .line 382
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$BucketizeItemsTask;->a:Lcom/facebook/katana/activity/events/EventsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventsAdapter;->notifyDataSetChanged()V

    .line 384
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$BucketizeItemsTask;->a:Lcom/facebook/katana/activity/events/EventsAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventsAdapter;->b(Lcom/facebook/katana/activity/events/EventsAdapter;)I

    .line 389
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$BucketizeItemsTask;->a:Lcom/facebook/katana/activity/events/EventsAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventsAdapter;->c(Lcom/facebook/katana/activity/events/EventsAdapter;)I

    move-result v0

    if-lez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$BucketizeItemsTask;->a:Lcom/facebook/katana/activity/events/EventsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventsAdapter;->b()V

    .line 392
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method
