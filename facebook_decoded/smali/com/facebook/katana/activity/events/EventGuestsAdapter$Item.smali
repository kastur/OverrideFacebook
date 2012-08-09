.class public Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;
.super Ljava/lang/Object;
.source "EventGuestsAdapter.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/katana/model/FacebookUser;

.field private final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/katana/model/FacebookUser;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;->a:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;->b:Lcom/facebook/katana/model/FacebookUser;

    .line 41
    iput p3, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;->c:I

    .line 42
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/facebook/katana/model/FacebookUser;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;->b:Lcom/facebook/katana/model/FacebookUser;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;->c:I

    return v0
.end method
