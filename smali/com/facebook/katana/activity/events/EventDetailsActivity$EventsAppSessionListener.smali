.class Lcom/facebook/katana/activity/events/EventDetailsActivity$EventsAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "EventDetailsActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/events/EventDetailsActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/events/EventDetailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventDetailsActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/events/EventDetailsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/events/EventDetailsActivity$EventsAppSessionListener;-><init>(Lcom/facebook/katana/activity/events/EventDetailsActivity;)V

    return-void
.end method


# virtual methods
.method public final a(IJZ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventDetailsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->a(Lcom/facebook/katana/activity/events/EventDetailsActivity;)Lcom/facebook/katana/activity/events/EventDetailsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->a()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventDetailsActivity;

    const v1, 0x7f0800bc

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 95
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    if-eqz p4, :cond_1

    .line 100
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventDetailsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->c(Lcom/facebook/katana/activity/events/EventDetailsActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 103
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventDetailsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->c(Lcom/facebook/katana/activity/events/EventDetailsActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventDetailsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->a(Lcom/facebook/katana/activity/events/EventDetailsActivity;)Lcom/facebook/katana/activity/events/EventDetailsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventDetailsActivity;

    const v2, 0x7f0800bb

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventDetailsActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->c(Lcom/facebook/katana/activity/events/EventDetailsActivity;)Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventDetailsActivity;

    invoke-static {v3}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->c(Lcom/facebook/katana/activity/events/EventDetailsActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v4, "rsvp_status"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->a(Landroid/view/View;I)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventDetailsActivity;

    const v1, 0x7f0b01f0

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventDetailsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->a(Lcom/facebook/katana/activity/events/EventDetailsActivity;)Lcom/facebook/katana/activity/events/EventDetailsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventDetailsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->a(Lcom/facebook/katana/activity/events/EventDetailsActivity;)Lcom/facebook/katana/activity/events/EventDetailsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventDetailsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->a(Lcom/facebook/katana/activity/events/EventDetailsActivity;)Lcom/facebook/katana/activity/events/EventDetailsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventDetailsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->a(Lcom/facebook/katana/activity/events/EventDetailsActivity;)Lcom/facebook/katana/activity/events/EventDetailsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventDetailsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->b(Lcom/facebook/katana/activity/events/EventDetailsActivity;)V

    .line 81
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventDetailsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/events/EventDetailsActivity;->b(Z)V

    .line 82
    return-void
.end method
