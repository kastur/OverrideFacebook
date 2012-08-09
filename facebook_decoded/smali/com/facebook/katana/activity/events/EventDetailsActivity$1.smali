.class Lcom/facebook/katana/activity/events/EventDetailsActivity$1;
.super Ljava/lang/Object;
.source "EventDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/events/EventDetailsActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/events/EventDetailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity$1;->a:Lcom/facebook/katana/activity/events/EventDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 280
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity$1;->a:Lcom/facebook/katana/activity/events/EventDetailsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->d(Lcom/facebook/katana/activity/events/EventDetailsActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity$1;->a:Lcom/facebook/katana/activity/events/EventDetailsActivity;

    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity$1;->a:Lcom/facebook/katana/activity/events/EventDetailsActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->a(Lcom/facebook/katana/activity/events/EventDetailsActivity;)Lcom/facebook/katana/activity/events/EventDetailsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->a()J

    move-result-wide v2

    invoke-static {p2}, Lcom/facebook/katana/model/FacebookEventFull;->a(I)Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;JLcom/facebook/katana/model/FacebookEventFull$RsvpStatus;)Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity$1;->a:Lcom/facebook/katana/activity/events/EventDetailsActivity;

    const v1, 0x7f0800bc

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 286
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity$1;->a:Lcom/facebook/katana/activity/events/EventDetailsActivity;

    invoke-virtual {v0, v5}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->dismissDialog(I)V

    .line 289
    return-void
.end method
