.class public Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;
.super Ljava/lang/Object;
.source "PlacesInfoAdapter.java"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;->a:I

    .line 47
    iput-object p2, p0, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;->b:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;->c:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;->a:I

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;->c:Ljava/lang/String;

    return-object v0
.end method
