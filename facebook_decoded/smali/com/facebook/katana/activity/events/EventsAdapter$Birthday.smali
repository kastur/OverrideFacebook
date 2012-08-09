.class public Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;
.super Ljava/lang/Object;
.source "EventsAdapter.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Long;

.field private final c:J

.field private final d:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Long;IIIJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;->a:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;->b:Ljava/lang/Long;

    .line 57
    iput-wide p6, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;->c:J

    .line 61
    iput p8, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;->d:I

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;->d:I

    return v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;)J
    .locals 2
    .parameter

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;->c:J

    return-wide v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;->b:Ljava/lang/Long;

    return-object v0
.end method
