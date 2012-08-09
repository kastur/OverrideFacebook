.class public Lcom/facebook/katana/activity/events/EventGuestsAdapter$byStatusAndName;
.super Ljava/lang/Object;
.source "EventGuestsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/events/EventGuestsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;->c()I

    move-result v1

    sub-int/2addr v0, v1

    .line 82
    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookUser;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookUser;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    check-cast p1, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;

    check-cast p2, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;

    invoke-static {p1, p2}, Lcom/facebook/katana/activity/events/EventGuestsAdapter$byStatusAndName;->a(Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;)I

    move-result v0

    return v0
.end method
