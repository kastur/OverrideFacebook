.class Lcom/facebook/katana/activity/events/EventsActivity$EventsAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "EventsActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/events/EventsActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/events/EventsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/facebook/katana/activity/events/EventsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventsActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/events/EventsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/events/EventsActivity$EventsAppSessionListener;-><init>(Lcom/facebook/katana/activity/events/EventsActivity;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventsActivity;->a(Lcom/facebook/katana/activity/events/EventsActivity;)Lcom/facebook/katana/activity/events/EventsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/facebook/katana/activity/events/EventsAdapter;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventsActivity;->a(Lcom/facebook/katana/activity/events/EventsActivity;)Lcom/facebook/katana/activity/events/EventsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventsAdapter;->b()V

    .line 92
    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventsActivity;->a(Lcom/facebook/katana/activity/events/EventsActivity;)Lcom/facebook/katana/activity/events/EventsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/katana/activity/events/EventsAdapter;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 67
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
    .line 77
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventsActivity;->b(Lcom/facebook/katana/activity/events/EventsActivity;)V

    .line 78
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventsActivity;->a(Lcom/facebook/katana/activity/events/EventsActivity;)Lcom/facebook/katana/activity/events/EventsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventsAdapter;->b()V

    .line 79
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/events/EventsActivity;->a(Lcom/facebook/katana/activity/events/EventsActivity;Z)V

    .line 80
    return-void
.end method
