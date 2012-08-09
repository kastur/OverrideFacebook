.class Lcom/facebook/orca/images/UrlImage$1;
.super Lcom/facebook/orca/activity/ScrollingActivityListener;
.source "UrlImage.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/images/UrlImage;


# direct methods
.method constructor <init>(Lcom/facebook/orca/images/UrlImage;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/facebook/orca/images/UrlImage$1;->a:Lcom/facebook/orca/images/UrlImage;

    invoke-direct {p0}, Lcom/facebook/orca/activity/ScrollingActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage$1;->a:Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/images/UrlImage;->a(Z)V

    .line 149
    return-void
.end method
