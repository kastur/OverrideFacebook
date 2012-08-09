.class Lcom/facebook/katana/activity/events/EventGuestsActivity$EventsAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "EventGuestsActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/events/EventGuestsActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/events/EventGuestsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/facebook/katana/activity/events/EventGuestsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventGuestsActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/events/EventGuestsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/events/EventGuestsActivity$EventsAppSessionListener;-><init>(Lcom/facebook/katana/activity/events/EventGuestsActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;ILjava/lang/Exception;Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventGuestsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventGuestsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventGuestsActivity;->a(Lcom/facebook/katana/activity/events/EventGuestsActivity;)Lcom/facebook/katana/activity/events/EventGuestsAdapter;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/facebook/katana/activity/events/EventGuestsAdapter;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    .line 43
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventGuestsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventGuestsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventGuestsActivity;->a(Lcom/facebook/katana/activity/events/EventGuestsActivity;)Lcom/facebook/katana/activity/events/EventGuestsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/events/EventGuestsAdapter;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    .line 52
    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookUser;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventGuestsActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventGuestsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventGuestsActivity;->a(Lcom/facebook/katana/activity/events/EventGuestsActivity;)Lcom/facebook/katana/activity/events/EventGuestsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/events/EventGuestsAdapter;->a(Ljava/util/Map;)V

    .line 63
    return-void
.end method
