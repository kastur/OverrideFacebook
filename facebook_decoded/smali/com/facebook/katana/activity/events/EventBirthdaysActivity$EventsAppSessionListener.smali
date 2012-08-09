.class Lcom/facebook/katana/activity/events/EventBirthdaysActivity$EventsAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "EventBirthdaysActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/events/EventBirthdaysActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/events/EventBirthdaysActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/facebook/katana/activity/events/EventBirthdaysActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventBirthdaysActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/events/EventBirthdaysActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/events/EventBirthdaysActivity$EventsAppSessionListener;-><init>(Lcom/facebook/katana/activity/events/EventBirthdaysActivity;)V

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
    .line 36
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventBirthdaysActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventBirthdaysActivity;->a(Lcom/facebook/katana/activity/events/EventBirthdaysActivity;)Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    .line 39
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysActivity$EventsAppSessionListener;->a:Lcom/facebook/katana/activity/events/EventBirthdaysActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventBirthdaysActivity;->a(Lcom/facebook/katana/activity/events/EventBirthdaysActivity;)Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    .line 48
    return-void
.end method
