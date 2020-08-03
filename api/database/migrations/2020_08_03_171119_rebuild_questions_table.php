<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class RebuildQuestionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('questions', function (Blueprint $table) {
            $table->integer('type')->after('name');
            $table->string('option1')->nullable()->change();
            $table->string('option2')->nullable()->change();
            $table->string('option3')->nullable()->change();
            $table->string('option4')->nullable()->change();
            $table->integer('correct_ans')->nullable()->change();
            $table->integer('marks');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('questions', function (Blueprint $table) {
            //
        });
    }
}
