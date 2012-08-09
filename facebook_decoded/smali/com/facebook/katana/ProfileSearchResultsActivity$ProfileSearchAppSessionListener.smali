.class public Lcom/facebook/katana/ProfileSearchResultsActivity$ProfileSearchAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "ProfileSearchResultsActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/ProfileSearchResultsActivity;


# direct methods
.method protected constructor <init>(Lcom/facebook/katana/ProfileSearchResultsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/facebook/katana/ProfileSearchResultsActivity$ProfileSearchAppSessionListener;->a:Lcom/facebook/katana/ProfileSearchResultsActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity$ProfileSearchAppSessionListener;->a:Lcom/facebook/katana/ProfileSearchResultsActivity;

    iget-object v0, v0, Lcom/facebook/katana/ProfileSearchResultsActivity;->f:Lcom/facebook/katana/ProfileSearchResultsAdapter;

    invoke-virtual {v0, p3, p2}, Lcom/facebook/katana/ProfileSearchResultsAdapter;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity$ProfileSearchAppSessionListener;->a:Lcom/facebook/katana/ProfileSearchResultsActivity;

    iget-object v0, v0, Lcom/facebook/katana/ProfileSearchResultsActivity;->f:Lcom/facebook/katana/ProfileSearchResultsAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/katana/ProfileSearchResultsAdapter;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 90
    return-void
.end method
